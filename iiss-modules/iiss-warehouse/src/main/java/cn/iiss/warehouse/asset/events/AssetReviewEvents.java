package cn.iiss.warehouse.asset.events;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.domainservice.model.AssetUpdateBizModel;
import lombok.Value;

public interface AssetReviewEvents {

    @Value
    class AssetAgreesEvent {
        Asset asset;
    }

    @Value
    class AssetRefusalEvent {
        Asset asset;
    }

    @Value
    class AssetRestEvent {
        Asset asset;
    }

    @Value
    class AssetUpdateEvent {
        Asset asset;
        AssetUpdateBizModel assetUpdateBizModel;
    }

}
