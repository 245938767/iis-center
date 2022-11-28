package cn.iiss.warehouse.controller;

import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.assetlifecycle.service.IAssetLifecycleService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/warehouse/lifecycle/v1")
public class AssetLifecycleController {
    private final IAssetLifecycleService assetLifecycleService;

    @GetMapping("/getByBatch/{warehouseAssetId}")
    @ApiOperation(value = "获得商品的生命周期数据")
    public AjaxResult getByBatchNo(@PathVariable Long warehouseAssetId) {
        List<AssetLifecycleDTO> lifecycle = assetLifecycleService.getLifecycle(warehouseAssetId);
        return AjaxResult.success(lifecycle);
    }
}
