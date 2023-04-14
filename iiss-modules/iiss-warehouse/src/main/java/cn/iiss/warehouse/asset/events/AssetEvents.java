package cn.iiss.warehouse.asset.events;

import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.asset.domainservice.model.BatchInOutModel;
import lombok.Value;

public interface AssetEvents {

    @Value
    class AssetInEvent {
        Asset asset;
        BatchInOutModel batchInOutModel;
    }

    @Value
    class AssetOutEvent {
        Asset asset;
        BatchInOutModel batchInOutModel;
    }
}
