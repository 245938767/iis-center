package cn.iiss.warehouse.controller;

import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import cn.iiss.warehouse.warehouseasset.request.WarehouseAssetRequest;
import cn.iiss.warehouse.warehouseasset.service.IWarehouseAssetService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/warehouseAsset/v1")
@RequiredArgsConstructor
public class WarehouseAssetController {
    private final IWarehouseAssetService warehouseAssetService;

    @PostMapping("/getByPage")
    @ApiOperation(value = "获得仓库中的商品数据",nickname = "getByWarehouseForGoods")
    public AjaxResult getWarehouseAssetByPage(@RequestBody WarehouseAssetRequest warehouseAssetRequest) {
        List<WarehouseAsset> byPage = warehouseAssetService.getByPage(warehouseAssetRequest);
        return AjaxResult.success(byPage);
    }
}
