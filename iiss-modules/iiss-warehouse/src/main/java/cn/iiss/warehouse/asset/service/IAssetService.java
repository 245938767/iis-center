package cn.iiss.warehouse.asset.service;

import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.face.response.AssetResponse;
import cn.iiss.warehouse.face.request.AssetCreateRequest;
import cn.iiss.warehouse.face.request.AssetQueryRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import com.baomidou.mybatisplus.extension.service.IService;

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
     *
     * @param assetTranslationRequest
     */
    public Long assetTranslation(AssetTranslationRequest assetTranslationRequest);


    public AssetResponse getAssetById(Long assetId);

    /**
     * @param batchNo
     * @return
     */
    public List<AssetResponse> getAssetByBatchNo(String batchNo);

    /**
     * @param queryRequest
     * @return
     */
    public List<AssetResponse> getAssetByPage(AssetQueryRequest queryRequest);

    /**
     * 检查当前资产是否有数据
     *
     * @param hosueId
     * @return
     */
    public Boolean houseForAssetIsData(Long hosueId);


}
