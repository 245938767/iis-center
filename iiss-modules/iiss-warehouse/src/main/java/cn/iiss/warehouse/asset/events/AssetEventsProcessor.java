package cn.iiss.warehouse.asset.events;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import cn.iiss.warehouse.assetrecord.service.IAssetRecordService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;


@Component
@Slf4j
@RequiredArgsConstructor
public class AssetEventsProcessor {
    private final IAssetRecordService assetRecordService;

    @EventListener
    public void handleAssetInForAssetRecord(AssetEvents.AssetInEvent asset) {
        BatchInOutModel batchInOutModel = asset.getBatchInOutModel();
        Asset assetData = asset.getAsset();
        boolean b = assetRecordService.batchSaveIn(assetData, batchInOutModel.getAssetRecordDTOList());
        log.debug("Processor处理入库记录：{}", b);
    }

    @EventListener
    public void handleAssetOutForAssetRecord(AssetEvents.AssetOutEvent asset) {
        BatchInOutModel batchInOutModel = asset.getBatchInOutModel();
        Asset assetData = asset.getAsset();
        boolean b = assetRecordService.batchSaveOut(assetData, batchInOutModel.getAssetRecordDTOList());
        log.debug("Processor处理出库记录：{}", b);
    }
}
