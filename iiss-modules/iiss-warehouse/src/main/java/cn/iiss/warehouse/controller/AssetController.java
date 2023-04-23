package cn.iiss.warehouse.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.warehouse.face.request.AssetCreateRequest;
import cn.iiss.warehouse.face.request.AssetQueryRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import cn.iiss.warehouse.face.response.AssetResponse;
import cn.iiss.warehouse.asset.service.IAssetService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/asset/v1")
@RequiredArgsConstructor
public class AssetController extends BaseController {
    private final IAssetService assetService;

    @PostMapping("saveIn")
    @ApiOperation(value = "创建入库", nickname = "assetCreateIn")
    public AjaxResult assetCreateIn(@RequestBody @Valid AssetCreateRequest assetCreateRequest) {
        assetService.assetCreateIn(assetCreateRequest);
        return AjaxResult.success();
    }

    @PostMapping("saveOut")
    @ApiOperation(value = "创建出库", nickname = "assetCreateOut")
    public AjaxResult assetCreateOut(@RequestBody @Valid AssetCreateRequest assetCreateRequest) {
        assetService.assetCreateOut(assetCreateRequest);
        return AjaxResult.success();
    }

    @PostMapping("/translation")
    @ApiOperation(value = "转仓", nickname = "translationWarehouse")
    public AjaxResult assetTranslation(@RequestBody @Valid AssetTranslationRequest assetTranslationRequest) {
        assetService.assetTranslation(assetTranslationRequest);
        return AjaxResult.success();
    }


    @GetMapping("getAssetId/{assetId}")
    @ApiOperation(value = "获得编号信息", nickname = "getByAssetId")
    public JsonObject<AssetResponse> assetGetByBatchNo(@PathVariable Long assetId) {
        AssetResponse assetByBatchNo = assetService.getAssetById(assetId);
        return JsonObject.success(assetByBatchNo);
    }

    @GetMapping("get/{batchNo}")
    @ApiOperation(value = "获得编号信息", nickname = "getByBatchNo")
    public JsonObject<AssetResponse> assetGetByBatchNo(@PathVariable String batchNo) {
        AssetResponse assetByBatchNo = assetService.getAssetByBatchNo(batchNo);
        return JsonObject.success(assetByBatchNo);
    }

    @PostMapping("/getPage")
    @ApiOperation(value = "获得分页数据", nickname = "getByPage")
    public TableDataInfo assetGetPageList(@RequestBody @Valid AssetQueryRequest assetQueryRequest) {
        return getDataTable(assetService.getAssetByPage(assetQueryRequest));
    }

}
