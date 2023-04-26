package cn.iiss.warehouse.controller;

import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.warehouse.warehouse.WarehouseDTO;
import cn.iiss.warehouse.warehouse.request.WarehouseCreateRequest;
import cn.iiss.warehouse.warehouse.request.WarehouseUpdateRequest;
import cn.iiss.warehouse.warehouse.service.IWarehouseService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/warehouse/v1")
@RequiredArgsConstructor
public class WarehouseController {
    private final IWarehouseService warehouseService;

    @PostMapping("/create")
    @ApiOperation(value = "创建仓库", nickname = "createWarehouse")
    public AjaxResult createWarehouse(@RequestBody @Valid WarehouseCreateRequest warehouseRequest) {
        Boolean aBoolean = warehouseService.create(warehouseRequest);
        if (Boolean.TRUE.equals(aBoolean)) {
            return AjaxResult.success();
        } else {
            return AjaxResult.error();
        }
    }

    @PostMapping("/update")
    @ApiOperation(value = "更新仓库信息", nickname = "updateWarehouse")
    public AjaxResult updateWarehouse(@RequestBody @Valid WarehouseUpdateRequest warehouseUpdateRequest) {
        Boolean aBoolean = warehouseService.update(warehouseUpdateRequest);
        if (Boolean.TRUE.equals(aBoolean)) {
            return AjaxResult.success();
        } else {
            return AjaxResult.error();
        }
    }

    @PostMapping("/getTreeList")
    @ApiOperation(value = "获得树形列表", nickname = "getTreeList")
    public AjaxResult getTreeList() {
        List<WarehouseDTO> treeData = warehouseService.getTreeData();
        return AjaxResult.success(treeData);
    }

    @PostMapping("/getChildList")
    @ApiOperation(value = "获得树形列表", nickname = "getChildList")
    public AjaxResult getChildList() {
        List<WarehouseDTO> treeData = warehouseService.getChildData();
        return AjaxResult.success(treeData);
    }

    @PostMapping("/getParentOneList/{id}")
    @ApiOperation(value = "获得列表", nickname = "getTreeList")
    public AjaxResult getParentOneList(@PathVariable Long id) {
        List<WarehouseDTO> treeData = warehouseService.getOneData(id);
        return AjaxResult.success(treeData);
    }

    @ApiOperation(value = "删除仓库数据", nickname = "deleteWarehouse")
    @PostMapping("/delete/{houseId}")
    public AjaxResult deleteWarehouse(@PathVariable Long houseId) {
        boolean delete = warehouseService.delete(houseId);
        if (delete) {
            return AjaxResult.success();
        } else {
            return AjaxResult.error();
        }
    }

    @GetMapping("/getByid/{id}")
    @ApiOperation(value = "获得ID数据", nickname = "getById")
    public R<WarehouseDTO> getById(@PathVariable Long id) {
        WarehouseDTO warehouseById = warehouseService.getWarehouseById(id);
        return R.ok(warehouseById);
    }

    @GetMapping("/getByIdName/{id}")
    @ApiOperation(value = "获得仓库名称", nickname = "getByIdName")
    public R<String> getByIdForName(@PathVariable Long id) {
        WarehouseDTO warehouseById = warehouseService.getWarehouseById(id);
        return R.ok(warehouseById.getWarehouseName());
    }
}
