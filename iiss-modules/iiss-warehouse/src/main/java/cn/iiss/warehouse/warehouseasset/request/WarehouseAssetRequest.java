package cn.iiss.warehouse.warehouseasset.request;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.Data;

import java.util.List;

@Data
public class WarehouseAssetRequest {
    private Long warehouseId;
    private String productName;

    public LambdaQueryWrapper<WarehouseAsset> getQuery(List<Long> warehouseList) {
        LambdaQueryWrapper<WarehouseAsset> warehouseAssetLambdaQueryWrapper = new LambdaQueryWrapper<>();
        if (productName != null && !productName.isEmpty()) {
            warehouseAssetLambdaQueryWrapper.like(WarehouseAsset::getProductName, productName);
        }
        if (!warehouseList.isEmpty()) {
            warehouseAssetLambdaQueryWrapper.in(WarehouseAsset::getWarehouseId, warehouseList);
        } else {
            warehouseAssetLambdaQueryWrapper.eq(WarehouseAsset::getWarehouseId, warehouseId);
        }
        return warehouseAssetLambdaQueryWrapper;
    }
}
