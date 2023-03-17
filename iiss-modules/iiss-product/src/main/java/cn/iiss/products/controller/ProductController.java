package cn.iiss.products.controller;


import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.common.log.annotation.Log;
import cn.iiss.common.log.enums.BusinessType;
import cn.iiss.common.security.annotation.InnerAuth;
import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.product.face.model.Product;
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
    @InnerAuth
//    @RequiresPermissions("product:goods:list")
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
//    @RequiresPermissions("product:goods:query")
    @GetMapping(value = "/{id}")
    public R<Product> getInfo(@PathVariable("id") Long id) {
        return R.ok(goodsService.selectGoodsById(id));
    }

    /**
     * 新增商品管理
     */
    @ApiOperation(value = "新增商品管理", nickname = "addNewGoods")
//    @RequiresPermissions("product:goods:add')")
    @Log(title = "商品管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Product product) {
        return toAjax(goodsService.insertGoods(product));
    }

    /**
     * 修改商品管理
     */
    @ApiOperation(value = "修改商品管理", nickname = "updateGoods")
//    @RequiresPermissions("product:goods:edit')")
    @Log(title = "商品管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Product product) {
        return toAjax(goodsService.updateGoods(product));
    }

    /**
     * 删除商品管理
     */
    @ApiOperation(value = "删除商品管理", nickname = "deleteGoods")
//    @RequiresPermissions("product:goods:remove')")
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
