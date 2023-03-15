package cn.iiss.warehouse.asset.service;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.request.AssetCreateRequest;
import cn.iiss.warehouse.asset.response.AssetResponse;
import com.baomidou.mybatisplus.extension.service.IService;
import cn.iiss.warehouse.asset.request.AssetQueryRequest;
import cn.iiss.warehouse.asset.request.AssetTranslationRequest;

import java.util.List;

public interface IAssetService extends IService<Asset> {
    /**
     * 创建入库
     *
     * @param assetCreateRequest
     */
    public void assetCreateIn(AssetCreateRequest assetCreateRequest);

    /**
     * 创建出库
     *
     * @param assetCreateRequest
     */
    public void assetCreateOut(AssetCreateRequest assetCreateRequest);

    /**
     * 创建转仓
     * @param assetTranslationRequest
     */
    public void assetTranslation(AssetTranslationRequest assetTranslationRequest);


    /**
     *
     * @param batchNo
     * @return
     */
    public AssetResponse getAssetByBatchNo(String batchNo);

    /**
     * @param queryRequest
     * @return
     */
    public List<AssetResponse> getAssetByPage(AssetQueryRequest queryRequest);

    /**
     * 检查当前资产是否有数据
     * @param hosueId
     * @return
     */
    public Boolean houseForAssetIsData(Long hosueId);


}
