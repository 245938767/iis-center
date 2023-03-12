package cn.iiss.warehouse.warehouseasset.request;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.Data;

@Data
public class WarehouseAssetRequest {
    private Long warehouseId;

    public LambdaQueryWrapper<WarehouseAsset> getQuery() {

        LambdaQueryWrapper<WarehouseAsset> warehouseAssetLambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (warehouseId != null) {
            warehouseAssetLambdaQueryWrapper.eq(WarehouseAsset::getHouseId, warehouseId);
        }
        return warehouseAssetLambdaQueryWrapper;
    }
}
