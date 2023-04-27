package cn.iiss.warehouse.face;

import cn.iiss.common.core.constant.ServiceNameConstants;
import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.warehouse.face.factory.WarehouseFallbackFactory;
import cn.iiss.warehouse.face.request.AssetCreateRequest;
import cn.iiss.warehouse.face.request.AssetQueryRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import cn.iiss.warehouse.face.response.AssetResponse;
import io.swagger.annotations.ApiOperation;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;


@FeignClient(contextId = "warehouseService", value = ServiceNameConstants.WAREHOUSE, fallbackFactory = WarehouseFallbackFactory.class)
public interface WarehouseService {

    @PostMapping("/asset/v1/saveIn")
    @ApiOperation(value = "创建入库", nickname = "assetCreateIn")
    public AjaxResult assetCreateIn(@RequestBody AssetCreateRequest assetCreateRequest);

    @PostMapping("/asset/v1/saveOut")
    @ApiOperation(value = "创建出库", nickname = "assetCreateOut")
    public AjaxResult assetCreateOut(@RequestBody AssetCreateRequest assetCreateRequest);

    @PostMapping("/asset/v1/translation")
    @ApiOperation(value = "转仓", nickname = "translationWarehouse")
    public JsonObject<Long> assetTranslation(@RequestBody AssetTranslationRequest assetTranslationRequest);

    @GetMapping("/asset/v1/getAssetId/{assetId}")
    @ApiOperation(value = "获得ID信息", nickname = "getByAssetId")
    public JsonObject<AssetResponse> assetGetByAssetId(@PathVariable("assetId") Long assetId);

    @GetMapping("/asset/v1/get/{batchNo}")
    @ApiOperation(value = "获得编号信息", nickname = "getByBatchNo")
    public JsonObject<List<AssetResponse>> assetGetByBatchNo(@PathVariable("batchNo") String batchNo);

    @PostMapping("/asset/v1/getPage")
    @ApiOperation(value = "获得分页数据", nickname = "getByPage")
    public TableDataInfo assetGetPageList(@RequestBody AssetQueryRequest assetQueryRequest);

    @GetMapping("/warehouse/v1/getByIdName/{id}")
    @ApiOperation(value = "获得仓库名称", nickname = "getByIdForName")
    public R<String> warehouseGetById(@PathVariable("id") Long id);
}
