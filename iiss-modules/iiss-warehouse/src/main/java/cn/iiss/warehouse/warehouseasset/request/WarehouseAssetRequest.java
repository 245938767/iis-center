package cn.iiss.warehouse.warehouseasset.request;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import lombok.Data;

@Data
public class WarehouseAssetRequest {
    private Long warehouseId;

    public LambdaQueryWrapper<WarehouseAsset> getQuery(){
        return new LambdaQueryWrapper<WarehouseAsset>().eq(WarehouseAsset::getHouseId,warehouseId);
    }
}
