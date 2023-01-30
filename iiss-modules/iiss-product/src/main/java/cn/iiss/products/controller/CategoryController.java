package cn.iiss.products.controller;

import cn.iiss.products.category.Category;
import cn.iiss.products.category.service.ICategoryService;
import cn.iiss.commons.core.web.controller.BaseController;
import cn.iiss.commons.core.web.domain.AjaxResult;
import cn.iiss.commons.log.annotation.Log;
import cn.iiss.commons.log.enums.BusinessType;
import cn.iiss.commons.security.annotation.RequiresPermissions;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 分类crudController
 *
 */
@RestController
@RequestMapping("/product/category")
@RequiredArgsConstructor
public class CategoryController extends BaseController {
    private final ICategoryService categoryService;

    /**
     * 查询分类crud列表
     */
    @ApiOperation(value = "查询分类列表", nickname = "getCategoryList")
    @RequiresPermissions("product:category:list")
    @GetMapping("/list")
    public AjaxResult list(Category category) {
        List<Category> list = categoryService.selectCategoryList(category);
        return AjaxResult.success(list);
    }


    /**
     * 获取分类crud详细信息
     */
    @ApiOperation(value = "获取分类crud详细信息", nickname = "getCategoryInfo")
    @RequiresPermissions("product:category:query")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {

        return AjaxResult.success(categoryService.selectCategoryById(id));
    }

    /**
     * 新增分类crud
     */
    @ApiOperation(value = "新增分类crud", nickname = "addCategory")

    @RequiresPermissions("product:category:add")
    @Log(title = "分类crud", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Category category) {
        return toAjax(categoryService.insertCategory(category));
    }

    /**
     * 修改分类crud
     */
    @ApiOperation(value = "修改分类", nickname = "updateCategory")
    @RequiresPermissions("product:category:edit")
    @Log(title = "分类crud", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Category category) {
        return toAjax(categoryService.updateCategory(category));
    }

    /**
     * 删除分类crud
     */
    @ApiOperation(value = "删除分类", nickname = "deleteCategory")
    @RequiresPermissions("product:category:remove")
    @Log(title = "分类crud", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(categoryService.deleteCategoryByIds(ids));
    }

    @ApiOperation(value = "获取树结构", nickname = "getCategoryTree")
    @GetMapping("/tree/select")
    public AjaxResult test() {
        return AjaxResult.success(categoryService.getTree());
    }

    @ApiOperation(value = "递归删除", nickname = "deleteTree")
    @PostMapping("/tree/delete")
    public AjaxResult testdelete(@RequestParam Long targetId, @RequestBody List<Category> list) {
        return toAjax(categoryService.deleteTreeByTargetId(list, targetId));
    }

    @ApiOperation(value = "获取带disabled的树", nickname = "getTreeWithDisabled")
    @PostMapping("/tree/disabled")
    public AjaxResult testDisabled(@RequestParam Long targetId, @RequestBody List<Category> list) {
        return AjaxResult.success(categoryService.disableTreeNode(list, targetId));
    }
}
