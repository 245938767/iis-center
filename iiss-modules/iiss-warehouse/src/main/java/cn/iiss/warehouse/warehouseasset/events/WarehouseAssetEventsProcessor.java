package cn.iiss.warehouse.warehouseasset.events;

import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.assetlifecycle.service.IAssetLifecycleService;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycle;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.mapper.WarehouseMapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class WarehouseAssetEventsProcessor {
    private final IAssetLifecycleService assetLifecycleService;
    private final WarehouseMapper warehouseMapper;

    @EventListener
    public void handelWarehouseAssetInForAssetLifecycle(WarehouseAssetEvents.WarehouseAssetInEvents warehouseAssetInEvents) {
        WarehouseAsset warehouseAsset = warehouseAssetInEvents.getWarehouseAsset();
        AssetLifecycleDTO assetLifecycleStatusDTO = warehouseAssetInEvents.getAssetLifecycleStatusDTO();
        AssetLifecycle assetLifecycle = assetLifecycleStatusDTO.dto2AssetLife(warehouseAsset.getId());
        boolean b = assetLifecycleService.saveLifecycle(assetLifecycle);
        // 更新仓库数据
        Warehouse warehouse = warehouseMapper.selectById(warehouseAsset.getHouseId());
        warehouse.updateIsDataInfoValid();
        int i = warehouseMapper.updateById(warehouse);
        log.debug("Processor商品生命周期记录(入库)");
    }

    @EventListener
    public void handelWarehouseAssetOutForAssetLifecycle(WarehouseAssetEvents.WarehouseAssetOutEvents warehouseAssetOutEvents) {
        WarehouseAsset warehouseAsset = warehouseAssetOutEvents.getWarehouseAsset();
        AssetLifecycleDTO assetLifecycleStatusDTO = warehouseAssetOutEvents.getAssetLifecycleStatusDTO();
        AssetLifecycle assetLifecycle = assetLifecycleStatusDTO.dto2AssetLife(warehouseAsset.getId());
        boolean b = assetLifecycleService.saveLifecycle(assetLifecycle);
        log.debug("Processor商品生命周期记录(出库)");
    }
}
