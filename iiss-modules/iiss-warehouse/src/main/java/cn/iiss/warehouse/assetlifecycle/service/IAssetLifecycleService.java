package cn.iiss.warehouse.assetlifecycle.service;

import com.baomidou.mybatisplus.extension.service.IService;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycle;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;

import java.util.List;

public interface IAssetLifecycleService extends IService<AssetLifecycle> {

    public boolean saveLifecycle(AssetLifecycle assetLifecycle);

    /**
     * 获得生命周期
     *
     * @param warehouseAssetId
     * @return
     */
    public List<AssetLifecycleDTO> getLifecycle(Long warehouseAssetId);

}
