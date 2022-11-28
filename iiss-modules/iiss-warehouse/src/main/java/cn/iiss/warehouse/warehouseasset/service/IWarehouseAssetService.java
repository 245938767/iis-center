package cn.iiss.warehouse.warehouseasset.service;

import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import cn.iiss.warehouse.warehouseasset.WarehouseAssetDTO;
import cn.iiss.warehouse.warehouseasset.request.WarehouseAssetRequest;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IWarehouseAssetService extends IService<WarehouseAsset> {
    /**
     * 入库数据保存
     *
     * @param assetLifecycleStatusDTO
     * @param warehouseAssetDTOS
     */
    public void saveInData(AssetLifecycleDTO assetLifecycleStatusDTO, WarehouseAssetDTO warehouseAssetDTOS);

    /**
     * 出库数据保存
     *
     * @param assetLifecycleStatusDTO
     * @param warehouseAssetDTOS
     */
    public void saveOutData(AssetLifecycleDTO assetLifecycleStatusDTO, WarehouseAssetDTO warehouseAssetDTOS);

    public List<WarehouseAsset>getByPage(WarehouseAssetRequest warehouseAssetRequest);
}
