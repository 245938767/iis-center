package cn.iiss.warehouse.warehouseasset.request;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.Data;

import java.util.List;

@Data
public class WarehouseAssetRequest {
    private Long warehouseId;

    public LambdaQueryWrapper<WarehouseAsset> getQuery(List<Long> warehouseList) {

        LambdaQueryWrapper<WarehouseAsset> warehouseAssetLambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (!warehouseList.isEmpty()) {
            warehouseAssetLambdaQueryWrapper.in(WarehouseAsset::getHouseId, warehouseList);
        } else {
            warehouseAssetLambdaQueryWrapper.eq(WarehouseAsset::getHouseId, warehouseId);
        }
        return warehouseAssetLambdaQueryWrapper;
    }
}
