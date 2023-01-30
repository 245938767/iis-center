package cn.iiss.products.controller;


import cn.iiss.commons.core.web.controller.BaseController;
import cn.iiss.commons.core.web.domain.AjaxResult;
import cn.iiss.commons.log.annotation.Log;
import cn.iiss.commons.log.enums.BusinessType;
import cn.iiss.commons.security.annotation.InnerAuth;
import cn.iiss.commons.security.annotation.RequiresPermissions;
import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.products.product.Product;
import cn.iiss.products.product.service.IProductService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 商品管理Controller
 */
@RestController
@RequestMapping("/product/v1")
@RequiredArgsConstructor
public class ProductController extends BaseController {
    private final IProductService goodsService;

    /**
     * 查询商品管理列表
     */
    @ApiOperation(value = "查询商品管理列表", nickname = "getGoodsList")
    @RequiresPermissions("product:goods:list")
    @InnerAuth
    @GetMapping("/list")
    public AjaxResult list(ProductQueryRequest queryRequest) {
        List<Product> list = goodsService.selectGoodsList(queryRequest);
        return AjaxResult.success(list);
    }

    /**
     * 获取商品管理详细信息
     */
    @ApiOperation(value = "获取商品管理详细信息", nickname = "getGoodsInfo")
    @InnerAuth
    @RequiresPermissions("product:goods:query")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return AjaxResult.success(goodsService.selectGoodsById(id));
    }

    /**
     * 新增商品管理
     */
    @ApiOperation(value = "新增商品管理", nickname = "addNewGoods")
    @RequiresPermissions("product:goods:add')")
    @Log(title = "商品管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Product product) {
        return toAjax(goodsService.insertGoods(product));
    }

    /**
     * 修改商品管理
     */
    @ApiOperation(value = "修改商品管理", nickname = "updateGoods")
    @RequiresPermissions("product:goods:edit')")
    @Log(title = "商品管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Product product) {
        return toAjax(goodsService.updateGoods(product));
    }

    /**
     * 删除商品管理
     */
    @ApiOperation(value = "删除商品管理", nickname = "deleteGoods")
    @RequiresPermissions("product:goods:remove')")
    @Log(title = "商品管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(goodsService.deleteGoodsByIds(ids));
    }

    @ApiOperation(value = "批量删除（递归", nickname = "deleteTreeByTargetIds")
    @PostMapping("/deleteTreeByTargetIds")
    public AjaxResult deleteTreeByTargetIds(@RequestBody List<Long> targetIds) {
        return toAjax(goodsService.deleteTreeByTargetIds(targetIds));
    }

    @ApiOperation(value = "根据分类id查询商品", nickname = "getGoodsByCategoryId")
    @GetMapping("/getGoodsByCategoryId/{categoryId}")
    public AjaxResult getGoodsByCategoryId(@PathVariable Long categoryId) {
        List<Product> list = goodsService.getGoodsByCategoryId(categoryId);
        return AjaxResult.success(list);
    }
}
