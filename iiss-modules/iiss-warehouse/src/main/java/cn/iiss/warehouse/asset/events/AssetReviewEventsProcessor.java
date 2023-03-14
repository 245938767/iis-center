package cn.iiss.warehouse.asset.events;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.domainservice.model.AssetUpdateBizModel;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.assetrecord.service.IAssetRecordService;
import cn.iiss.warehouse.warehouseasset.WarehouseAssetDTO;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.assetrecord.AssetRecord;
import cn.iiss.warehouse.warehouseasset.service.IWarehouseAssetService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Slf4j
@RequiredArgsConstructor
public class AssetReviewEventsProcessor {
    private final IAssetRecordService assetRecordService;
    private final IWarehouseAssetService warehouseAssetService;

    @EventListener
    public void handleAssetAgreesForAssetRecord(AssetReviewEvents.AssetAgreesEvent assetAgreesEvent) {
        Asset asset = assetAgreesEvent.getAsset();
        List<AssetRecord> assetRecordList = assetRecordService.list(
                new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, asset.getId()));
        //获得资产信息
        for (AssetRecord assetRecord : assetRecordList) {
            AssetLifecycleDTO assetLifecycleStatusDTO = AssetLifecycleDTO.builder()
                    .houseName(assetRecord.getHouseName())
                    .operateUser(assetRecord.getOperateUser())

                    .productImg(assetRecord.getProductImg())
                    .productCode(assetRecord.getProductCode())
                    .productName(assetRecord.getProductName())
                    .productSpecification(assetRecord.getProductSpecification())
                    .productNum(assetRecord.getProductNum())

                    .inOutType(asset.getInOutType())
                    .inOutBizType(asset.getInOutBizType())
                    .warehouseAssetBizType(assetRecord.getWarehouseAssetBizType())

                    .batchNo(assetRecord.getBatchNo())
                    .price(assetRecord.getPrice())
                    .tax(assetRecord.getTax())
                    .taxRate(assetRecord.getTaxRate())
                    .amount(assetRecord.getAmount())
                    .build();
            WarehouseAssetDTO warehouseAssetDTO = WarehouseAssetDTO.builder()
                    .houseId(assetRecord.getHouseId())
                    .houseName(assetRecord.getHouseName())
                    .productId(assetRecord.getProductId())
                    .productImg(assetRecord.getProductImg())
                    .productNum(assetRecord.getProductNum())
                    .productName(assetRecord.getProductName())
                    .productCode(assetRecord.getProductCode())
                    .productSpecification(assetRecord.getProductSpecification())
                    .build();
            //对资产入库/出库
            switch (asset.getInOutType()) {
                case IN -> warehouseAssetService.saveInData(assetLifecycleStatusDTO, warehouseAssetDTO);
                case OUT -> warehouseAssetService.saveOutData(assetLifecycleStatusDTO, warehouseAssetDTO);
            }
            assetRecord.setValidStatus(ValidStatus.VALID);
        }

    }

    @EventListener
    public void handleAssetRefusalForAssetRecord(AssetReviewEvents.AssetRefusalEvent assetRefusalEvent) {
        Asset asset = assetRefusalEvent.getAsset();
    }

    @EventListener
    public void handleAssetRestForAssetRecord(AssetReviewEvents.AssetRestEvent assetRestEvent) {
        //反审核为待入库/出库
        //清除之前的入库/出库数据
        //重置状态
    }

    @EventListener
    public void handleAssetUpdateForAssetRecord(AssetReviewEvents.AssetUpdateEvent assetUpdateEvent) {
        AssetUpdateBizModel assetUpdateBizModel = assetUpdateEvent.getAssetUpdateBizModel();
        Asset asset = assetUpdateEvent.getAsset();
        //删除之前
        boolean update = assetRecordService.batchSaveUpdate(asset, assetUpdateBizModel.getAssetRecordUpdateList());

    }


}
