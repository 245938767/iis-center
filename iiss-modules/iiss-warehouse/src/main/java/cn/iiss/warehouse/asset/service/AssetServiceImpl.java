package cn.iiss.warehouse.asset.service;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.domainservice.IAssetDomainService;
import cn.iiss.warehouse.asset.domainservice.model.TransferModel;
import cn.iiss.warehouse.asset.mapper.AssetMapper;
import cn.iiss.warehouse.asset.request.AssetCreateRequest;
import cn.iiss.warehouse.asset.request.AssetProductRequest;
import cn.iiss.warehouse.asset.request.AssetQueryRequest;
import cn.iiss.warehouse.asset.request.AssetTranslationRequest;
import cn.iiss.warehouse.asset.AssetErrorCode;
import cn.iiss.commons.core.exception.ServiceException;
import cn.iiss.commons.security.utils.SecurityUtils;
import cn.iiss.product.face.ProductService;
import cn.iiss.product.face.model.GoodsVo;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.common.constants.ValidStatus;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import cn.iiss.warehouse.asset.response.AssetResponse;
import cn.iiss.warehouse.assetrecord.AssetRecord;
import cn.iiss.warehouse.assetrecord.AssetRecordDTO;
import cn.iiss.warehouse.assetrecord.service.IAssetRecordService;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.mapper.WarehouseMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
@Transactional
public class AssetServiceImpl extends ServiceImpl<AssetMapper, Asset> implements IAssetService {
    private final IAssetDomainService assetDomainService;
    private final WarehouseMapper warehouseMapper;
    private final IAssetRecordService assetRecordService;
    private final ProductService productService;


    @Override
    public void assetCreateIn(AssetCreateRequest assetCreateRequest) {
        Warehouse warehouse = getWarehouse(assetCreateRequest.getHouseId());
        List<AssetRecordDTO> assetRecordDTOList = request2DTO(assetCreateRequest.getAssetProductRequestList());
        BatchInOutModel batchInOutModel = BatchInOutModel
                .builder()
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .houseId(assetCreateRequest.getHouseId())
                .houseName(warehouse.getWarehouseName())
                .inOutBizType(assetCreateRequest.getInOutBizType())
                .inOutType(InOutType.IN)
                .assetRecordDTOList(assetRecordDTOList)
                .amount(getForRecordListPrice(assetRecordDTOList))
                .build();
        assetDomainService.handleAssetIn(batchInOutModel);
    }

    @Override
    public void assetCreateOut(AssetCreateRequest assetCreateRequest) {
        Warehouse warehouse = getWarehouse(assetCreateRequest.getHouseId());
        List<AssetRecordDTO> assetRecordDTOList = request2DTO(assetCreateRequest.getAssetProductRequestList());
        BatchInOutModel batchInOutModel = BatchInOutModel
                .builder()
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .houseId(assetCreateRequest.getHouseId())
                .houseName(warehouse.getWarehouseName())
                .inOutBizType(assetCreateRequest.getInOutBizType())
                .inOutType(InOutType.OUT)
                .assetRecordDTOList(assetRecordDTOList)
                .amount(getForRecordListPrice(assetRecordDTOList))
                .build();
        assetDomainService.handleAssetOut(batchInOutModel);
    }

    @Override
    public void assetTranslation(AssetTranslationRequest assetTranslationRequest) {
        Warehouse warehouse = getWarehouse(assetTranslationRequest.getHouseId());
        Warehouse translationWarehouse = getWarehouse(assetTranslationRequest.getTranslationHouseId());
        List<AssetRecordDTO> assetRecordDTOS = request2DTO(assetTranslationRequest.getAssetProductRequestList());
        TransferModel build = TransferModel.builder()
                .translationWarehouseName(translationWarehouse.getWarehouseName())
                .warehouseName(warehouse.getWarehouseName())
                .translationHouseId(translationWarehouse.getId())
                .houseId(warehouse.getId())
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .assetRecordDTOList(assetRecordDTOS)
                .amount(getForRecordListPrice(assetRecordDTOS))
                .build();
        assetDomainService.handleAssetTransfer(build);
    }

    @Override
    public AssetResponse getAssetByBatchNo(String batchNo) {
        Asset asset = getOne(new LambdaQueryWrapper<Asset>().eq(Asset::getBatchNo, batchNo));
        return AssetResponse.builder().build().data2Response(asset, assetRecordService.list(
                new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, asset.getId())));
    }

    @Override
    public List<AssetResponse> getAssetByPage(AssetQueryRequest queryRequest) {
        return list(queryRequest.getQueryWrapper()).stream().map(x -> AssetResponse.builder().build().data2Response(x, null)).collect(Collectors.toList());
    }

    @Override
    public Boolean houseForAssetIsData(Long houseId) {
        LambdaQueryWrapper<Asset> assetq = new LambdaQueryWrapper<Asset>().eq(Asset::getHouseId, houseId);
        List<Asset> list = list(assetq);
        return list != null && !list.isEmpty();
    }

    /**
     * 数据转换类
     *
     * @param assetProductRequestList
     * @return
     */
    private List<AssetRecordDTO> request2DTO(List<AssetProductRequest> assetProductRequestList) {
        //计算
        return assetProductRequestList.stream()
                .map(x -> {
                    BigDecimal amount = Optional.ofNullable(x.getPrice()).orElse(BigDecimal.ZERO)
                            .multiply(BigDecimal.valueOf(Optional.ofNullable(x.getProductNum()).orElse(0L)));
                    //获得商品数据
                    GoodsVo goodInfo = productService.getById(x.getProductId()).getData();
                    return AssetRecordDTO
                            .builder()
                            .price(x.getPrice())
                            .orderNo(x.getOrderNo())
                            .tax(x.getTax())
                            .taxRate(x.getTaxRate())
                            .productNum(x.getProductNum())
                            .amount(amount)

                            .productCode(goodInfo.getProductCode())
                            .productName(goodInfo.getProductName())
                            .productImg(goodInfo.getProductImg())
                            .productSpecification(goodInfo.getProductSpecification())
                            .productId(goodInfo.getId())

                            .operateUser(SecurityUtils.getUsername())
                            .warehouseAssetBizType(x.getWarehouseAssetBizType())

                            .isOrderProduct(x.getIsOrderProduct())
                            .orderNo(x.getOrderNo())
                            .build();
                }).collect(Collectors.toList());
    }

    private Warehouse getWarehouse(Long houseId) {
        Optional<Warehouse> warehouse = Optional.ofNullable(warehouseMapper.selectOne(new LambdaQueryWrapper<Warehouse>().eq(Warehouse::getId, houseId)));

        if (warehouse.isEmpty()) {
            throw new ServiceException(AssetErrorCode.ASSET_CODE_NOT_EXIST);
        }
        if (ValidStatus.INVALID.equals(warehouse.get().getValidStatus())) {
            throw new ServiceException(AssetErrorCode.ASSET_WAREHOUSE_IS_NO_DATA);
        }
        return warehouse.get();
    }

    private BigDecimal getForRecordListPrice(List<AssetRecordDTO> assetRecordDTOList) {
        return assetRecordDTOList.stream().map(price -> Optional.ofNullable(price.getAmount()).orElse(BigDecimal.ZERO)).reduce(BigDecimal.ZERO, BigDecimal::add);
    }
}
