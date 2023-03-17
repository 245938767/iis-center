package cn.iiss.warehouse.asset.events;

import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.assetrecord.AssetRecord;
import cn.iiss.warehouse.assetrecord.AssetRecordDTO;
import cn.iiss.warehouse.assetrecord.service.IAssetRecordService;
import cn.iiss.warehouse.warehouseasset.WarehouseAssetDTO;
import cn.iiss.warehouse.warehouseasset.service.IWarehouseAssetService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
@Slf4j
@RequiredArgsConstructor
public class AssetEventsProcessor {
    private final IAssetRecordService assetRecordService;
    private final IWarehouseAssetService warehouseAssetService;

    @EventListener
    public void handleAssetInForAssetRecord(AssetEvents.AssetInEvent asset) {
        BatchInOutModel batchInOutModel = asset.getBatchInOutModel();
        Asset assetData = asset.getAsset();
        boolean b = assetRecordService.batchSaveIn(assetData, batchInOutModel.getAssetRecordDTOList());
        handleAsset(assetData,batchInOutModel);
        log.debug("Processor处理入库记录：{}", b);
    }

    @EventListener
    public void handleAssetOutForAssetRecord(AssetEvents.AssetOutEvent asset) {
        BatchInOutModel batchInOutModel = asset.getBatchInOutModel();
        Asset assetData = asset.getAsset();
        //save
        boolean b = assetRecordService.batchSaveOut(assetData, batchInOutModel.getAssetRecordDTOList());
        handleAsset(assetData,batchInOutModel);
        log.debug("Processor处理出库记录：{}", b);
    }

    public void handleAsset(Asset asset, BatchInOutModel batchInOutModel) {
        for (AssetRecordDTO assetRecord : batchInOutModel.getAssetRecordDTOList()) {
            AssetLifecycleDTO assetLifecycleStatusDTO = AssetLifecycleDTO.builder()
                    .warehouseName(batchInOutModel.getWarehouseName())
                    .operateUser(assetRecord.getOperateUser())

                    .productImg(assetRecord.getProductImg())
                    .productCode(assetRecord.getProductCode())
                    .productName(assetRecord.getProductName())
                    .productSpecification(assetRecord.getProductSpecification())
                    .productNum(assetRecord.getProductNum())

                    .inOutType(asset.getInOutType())
                    .inOutBizType(asset.getInOutBizType())
                    .warehouseAssetBizType(assetRecord.getWarehouseAssetBizType())

                    .batchNo(asset.getBatchNo())
                    .price(assetRecord.getPrice())
                    .tax(assetRecord.getTax())
                    .taxRate(assetRecord.getTaxRate())
                    .amount(assetRecord.getAmount())
                    .build();
            WarehouseAssetDTO warehouseAssetDTO = WarehouseAssetDTO.builder()
                    .houseId(batchInOutModel.getWarehouseId())
                    .houseName(batchInOutModel.getWarehouseName())
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
        }
    }
}
