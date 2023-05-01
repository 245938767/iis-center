package cn.iiss.warehouse.asset.service;

import cn.iiss.product.face.model.Product;
import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.asset.domainservice.IAssetDomainService;
import cn.iiss.warehouse.asset.domainservice.model.TransferModel;
import cn.iiss.warehouse.asset.mapper.AssetMapper;
import cn.iiss.warehouse.asset.AssetErrorCode;
import cn.iiss.common.core.exception.ServiceException;
import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.product.face.ProductService;
import cn.iiss.warehouse.face.model.InOutBizType;
import cn.iiss.warehouse.face.model.InOutType;
import cn.iiss.warehouse.face.request.AssetCreateRequest;
import cn.iiss.warehouse.face.request.AssetProductRequest;
import cn.iiss.warehouse.face.request.AssetQueryRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import cn.iiss.warehouse.face.response.AssetResponse;
import cn.iiss.warehouse.face.model.AssetRecord;
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
        Warehouse warehouse = getWarehouse(assetCreateRequest.getWarehouseId());
        List<AssetRecordDTO> assetRecordDTOList = request2DTO(assetCreateRequest.getAssetProductRequestList());
        BatchInOutModel batchInOutModel = BatchInOutModel
                .builder()
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .warehouseId(assetCreateRequest.getWarehouseId())
                .warehouseName(warehouse.getWarehouseName())
                .inOutBizType(assetCreateRequest.getInOutBizType())
                .inOutType(InOutType.IN)
                .batchNo(assetCreateRequest.getBatchNo())
                .assetRecordDTOList(assetRecordDTOList)
                .amount(getForRecordListPrice(assetRecordDTOList))
                .build();
        assetDomainService.handleAssetIn(batchInOutModel);
    }

    @Override
    public void assetCreateOut(AssetCreateRequest assetCreateRequest) {
        Warehouse warehouse = getWarehouse(assetCreateRequest.getWarehouseId());
        List<AssetRecordDTO> assetRecordDTOList = request2DTO(assetCreateRequest.getAssetProductRequestList());
        BatchInOutModel batchInOutModel = BatchInOutModel
                .builder()
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .warehouseId(assetCreateRequest.getWarehouseId())
                .warehouseName(warehouse.getWarehouseName())
                .inOutBizType(assetCreateRequest.getInOutBizType())
                .inOutType(InOutType.OUT)
                .batchNo(assetCreateRequest.getBatchNo())
                .assetRecordDTOList(assetRecordDTOList)
                .amount(getForRecordListPrice(assetRecordDTOList))
                .build();
        assetDomainService.handleAssetOut(batchInOutModel);
    }

    @Override
    public Long assetTranslation(AssetTranslationRequest assetTranslationRequest) {
        Warehouse warehouse = getWarehouse(assetTranslationRequest.getWarehouseId());
        Warehouse translationWarehouse = getWarehouse(assetTranslationRequest.getTranslationWarehouseId());
        List<AssetRecordDTO> assetRecordDTOS = request2DTO(assetTranslationRequest.getAssetProductRequestList());
        TransferModel build = TransferModel.builder()
                .translationWarehouseName(translationWarehouse.getWarehouseName())
                .warehouseName(warehouse.getWarehouseName())
                .translationWarehouseId(translationWarehouse.getId())
                .warehouseId(warehouse.getId())
                .createUserId(SecurityUtils.getUserId())
                .createUserName(SecurityUtils.getUsername())
                .assetRecordDTOList(assetRecordDTOS)
                .inBatchNo(assetTranslationRequest.getBatchNo())
                .outBatchNo(assetTranslationRequest.getBatchNo())
                .amount(getForRecordListPrice(assetRecordDTOS))
                .build();
        return assetDomainService.handleAssetTransfer(build);
    }

    @Override
    public AssetResponse getAssetById(Long assetId) {
        Asset asset = getOne(new LambdaQueryWrapper<Asset>().eq(Asset::getId, assetId));
        return AssetResponse.builder().build().data2Response(asset, assetRecordService.list(
                new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, asset.getId())));
    }

    @Override
    public List<AssetResponse> getAssetByBatchNo(String batchNo) {
        List<Asset> asset = list(new LambdaQueryWrapper<Asset>().eq(Asset::getBatchNo, batchNo));
        return asset.stream().map(x -> AssetResponse.builder().build().data2Response(x, assetRecordService.list(
                new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, x.getId())))).toList();
    }

    @Override
    public List<AssetResponse> getAssetByPage(AssetQueryRequest queryRequest) {

        return list(getQueryWrapper(queryRequest)).stream().map(x -> {
            //获得数据
            List<AssetRecord> list = assetRecordService.list(
                    new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, x.getId()));
            return AssetResponse.builder().build().data2Response(x, list);
        }).toList();
    }

    @Override
    public Boolean houseForAssetIsData(Long houseId) {
        LambdaQueryWrapper<Asset> assetq = new LambdaQueryWrapper<Asset>().eq(Asset::getWarehouseId, houseId);
        List<Asset> list = list(assetq);
        return list != null && !list.isEmpty();
    }

    /**
     * 数据转换类
     *
     * @param assetProductRequestList 入库时的产品信息
     * @return 中间类
     */
    private List<AssetRecordDTO> request2DTO(List<AssetProductRequest> assetProductRequestList) {
        //计算
        return assetProductRequestList.stream()
                .map(x -> {
                    BigDecimal amount = Optional.ofNullable(x.getPrice()).orElse(BigDecimal.ZERO)
                            .multiply(BigDecimal.valueOf(Optional.ofNullable(x.getProductNum()).orElse(0L)));
                    //获得商品数据
                    Product goodInfo = productService.getById(x.getProductId()).getData();
                    return AssetRecordDTO
                            .builder()
                            .price(x.getPrice())
                            .tax(x.getTax())
                            .taxRate(x.getTaxRate())
                            .productNum(x.getProductNum())
                            .amount(amount)

                            .productCode(goodInfo.getProductCode())
                            .productName(goodInfo.getProductName())
                            .productImg(goodInfo.getProductImg())
                            .productSpecification(goodInfo.getProductSpecification())
                            .productId(Long.valueOf(goodInfo.getId()))

                            .operateUser(SecurityUtils.getUsername())
                            .warehouseAssetBizType(x.getWarehouseAssetBizType())

                            .build();
                }).toList();
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

    private LambdaQueryWrapper<Asset> getQueryWrapper(AssetQueryRequest assetQueryRequest) {

        LambdaQueryWrapper<Asset> assetLambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (assetQueryRequest.getBatchNo() != null) {
            assetLambdaQueryWrapper.like(Asset::getBatchNo, assetQueryRequest.getBatchNo());
        }
        if (assetQueryRequest.getWarehouseId() != null) {
            assetLambdaQueryWrapper.eq(Asset::getWarehouseId, assetQueryRequest.getWarehouseId());
        }
        if (assetQueryRequest.getInOutBizType() != null) {
            assetLambdaQueryWrapper.eq(Asset::getInOutBizType, assetQueryRequest.getInOutBizType());
        }
        if (assetQueryRequest.getInOutType() != null) {
            assetLambdaQueryWrapper.eq(Asset::getInOutType, assetQueryRequest.getInOutType());
        }
        if (assetQueryRequest.getCreateUserName() != null) {

            assetLambdaQueryWrapper.like(Asset::getCreateUserName, assetQueryRequest.getCreateUserName());
        }
        if (assetQueryRequest.getWarehouseName() != null) {

            assetLambdaQueryWrapper.like(Asset::getWarehouseName, assetQueryRequest.getWarehouseName());
        }
        assetLambdaQueryWrapper.orderByDesc(Asset::getCreateTime);
        switch (assetQueryRequest.getWarehouseRecordStatus()) {

            case 2:
                assetLambdaQueryWrapper.eq(Asset::getInOutType, InOutType.OUT);
                break;
            case 3:
                assetLambdaQueryWrapper.eq(Asset::getInOutBizType, InOutBizType.WAREHOUSE_ADJUST_IN).or().eq(Asset::getInOutBizType, InOutBizType.WAREHOUSE_ADJUST_OUT);
                break;
            default:
                //入库
                assetLambdaQueryWrapper.eq(Asset::getInOutType, InOutType.IN);
        }

        return assetLambdaQueryWrapper;
    }

}
