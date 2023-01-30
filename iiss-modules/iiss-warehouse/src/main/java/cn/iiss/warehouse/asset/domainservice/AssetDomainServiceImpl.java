package cn.iiss.warehouse.asset.domainservice;

import cn.hutool.core.lang.Assert;
import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.asset.domainservice.model.AssetBizInfo;
import cn.iiss.warehouse.asset.domainservice.model.AssetUpdateBizModel;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import cn.iiss.warehouse.asset.domainservice.model.TransferModel;
import cn.iiss.warehouse.asset.events.AssetReviewEvents;
import cn.iiss.warehouse.asset.mapper.AssetMapper;
import cn.iiss.warehouse.asset.AssetErrorCode;
import cn.iiss.commons.core.exception.ServiceException;
import cn.iiss.commons.core.utils.uuid.IdUtils;
import cn.iiss.mybatis.support.EntityOperations;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.common.constants.ValidStatus;
import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.events.AssetEvents;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.mapper.WarehouseMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * 领域层禁止有业务逻辑出现，所有的model数据都是可信的
 */
@Service
@RequiredArgsConstructor
@Slf4j
public class AssetDomainServiceImpl implements IAssetDomainService {
    private final AssetMapper assetMapper;
    private final ApplicationEventPublisher eventPublisher;

    private final WarehouseMapper warehouseMapper;

    @Override
    public void handleAssetIn(BatchInOutModel batchInOutModel) {
        Assert.notEmpty(batchInOutModel.getAssetRecordDTOList());
        handleWarehouseForIsDataInfo(batchInOutModel.getHouseId());
        AssetBizInfo assetBizInfo = AssetBizInfo
                .builder()
                .inOutType(batchInOutModel.getInOutType())
                .createUserName(batchInOutModel.getCreateUserName())
                .createUserId(batchInOutModel.getCreateUserId())
                .houseId(batchInOutModel.getHouseId())
                .houseName(batchInOutModel.getHouseName())
                .batchNo(IdUtils.fastSimpleUUID())
                .amount(batchInOutModel.getAmount())
                .inOutBizType(batchInOutModel.getInOutBizType())
                .build();

        EntityOperations
                .doCreate(assetMapper)
                .create(Asset::new)
                .update(a -> a.in(assetBizInfo))
                .successHook(x -> eventPublisher.publishEvent(new AssetEvents.AssetInEvent(x, batchInOutModel)))
                .execute();
    }

    @Override
    public void handleAssetOut(BatchInOutModel batchInOutModel) {
        Assert.notEmpty(batchInOutModel.getAssetRecordDTOList());
        handleWarehouseForIsDataInfo(batchInOutModel.getHouseId());
        AssetBizInfo assetBizInfo = AssetBizInfo
                .builder()
                .inOutType(batchInOutModel.getInOutType())
                .createUserName(batchInOutModel.getCreateUserName())
                .createUserId(batchInOutModel.getCreateUserId())
                .houseId(batchInOutModel.getHouseId())
                .houseName(batchInOutModel.getHouseName())
                .batchNo(IdUtils.fastSimpleUUID())
                .amount(batchInOutModel.getAmount())
                .inOutBizType(batchInOutModel.getInOutBizType())
                .build();

        EntityOperations
                .doCreate(assetMapper)
                .create(Asset::new)
                .update(a -> a.out(assetBizInfo))
                .successHook(x -> eventPublisher.publishEvent(new AssetEvents.AssetOutEvent(x, batchInOutModel)))
                .execute();

    }

    @Override
    public void handleAssetTransfer(TransferModel transferModel) {
        BatchInOutModel out = BatchInOutModel.builder()
                .assetRecordDTOList(transferModel.getAssetRecordDTOList())
                .inOutType(InOutType.OUT)
                .inOutBizType(InOutBizType.WAREHOUSE_ADJUST_OUT)
                .houseId(transferModel.getHouseId())
                .houseName(transferModel.getWarehouseName())
                .createUserName(transferModel.getCreateUserName())
                .createUserId(transferModel.getCreateUserId())
                .amount(transferModel.getAmount())
                .assetRecordDTOList(transferModel.getAssetRecordDTOList())
                .build();
        handleAssetOut(out);

        BatchInOutModel in = BatchInOutModel.builder()
                .assetRecordDTOList(transferModel.getAssetRecordDTOList())
                .inOutType(InOutType.IN)
                .inOutBizType(InOutBizType.WAREHOUSE_ADJUST_IN)
                .houseId(transferModel.getTranslationHouseId())
                .houseName(transferModel.getWarehouseName())
                .createUserName(transferModel.getCreateUserName())
                .createUserId(transferModel.getCreateUserId())
                .amount(transferModel.getAmount())
                .assetRecordDTOList(transferModel.getAssetRecordDTOList())
                .build();
        handleAssetIn(in);
    }

    @Override
    public void handleAssetUpdate(AssetUpdateBizModel assetUpdateBizModel) {
        Assert.notEmpty(assetUpdateBizModel.getAssetRecordUpdateList());
        Optional<Asset> one = Optional.ofNullable(assetMapper.selectOne(new LambdaQueryWrapper<Asset>().eq(Asset::getBatchNo, assetUpdateBizModel.getBatchNo())));
        EntityOperations.doUpdate(assetMapper)
                .load(one::get)
                .update(x -> x.updateAmount(assetUpdateBizModel.getAmount()))
                .successHook(x -> eventPublisher.publishEvent(new AssetReviewEvents.AssetUpdateEvent(x, assetUpdateBizModel)))
                .execute();

    }

    private Warehouse handleWarehouseForIsDataInfo(Long houseId) {
        Warehouse warehouse = warehouseMapper.selectById(houseId);
        if (ValidStatus.INVALID.equals(warehouse.getIsDataInfo())) {
            throw new ServiceException(AssetErrorCode.ASSET_WAREHOUSE_IS_NO_DATA);
        }
        return warehouse;
    }
}
