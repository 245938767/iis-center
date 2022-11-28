package cn.iiss.products.category.service;



import cn.iiss.products.category.Category;

import java.util.List;

/**
 * 分类crudService接口
 *
 */
public interface ICategoryService {
    /**
     * 查询分类crud
     *
     * @param id 分类crud主键
     * @return 分类crud
     */
    public Category selectCategoryById(Long id);

    /**
     * 查询分类crud列表
     *
     * @param category 分类crud
     * @return 分类crud集合
     */
    public List<Category> selectCategoryList(Category category);

    /**
     * 新增分类crud
     *
     * @param category 分类crud
     * @return 结果
     */
    public int insertCategory(Category category);

    /**
     * 修改分类crud
     *
     * @param category 分类crud
     * @return 结果
     */
    public int updateCategory(Category category);

    /**
     * 批量删除分类crud
     *
     * @param ids 需要删除的分类crud主键集合
     * @return 结果
     */
    public int deleteCategoryByIds(Long[] ids);

    /**
     * 删除分类crud信息
     *
     * @param id 分类crud主键
     * @return 结果
     */
    public int deleteCategoryById(Long id);

    List<Category> getTree();

    int deleteTreeByTargetId(List<Category> tree, Long targetId);

    List<Category> disableTreeNode(List<Category> tree, Long targetId);

    List<Category> getByCategoryIds(List<Long> ids);
}
