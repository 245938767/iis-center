package cn.iiss.warehouse.warehouseasset.events;

import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.Value;

public interface WarehouseAssetEvents {

    @Value
    class WarehouseAssetInEvents {
        WarehouseAsset warehouseAsset;
        AssetLifecycleDTO assetLifecycleStatusDTO;
    }

    @Value
    class WarehouseAssetOutEvents {
        WarehouseAsset warehouseAsset;
        AssetLifecycleDTO assetLifecycleStatusDTO;
    }
}
