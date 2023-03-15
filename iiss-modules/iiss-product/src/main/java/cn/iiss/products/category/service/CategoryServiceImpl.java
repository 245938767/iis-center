package cn.iiss.products.category.service;

import cn.iiss.products.category.Category;
import cn.iiss.products.category.mapper.CategoryMapper;
import cn.iiss.common.core.exception.ServiceException;
import cn.iiss.products.product.Product;
import cn.iiss.products.product.mapper.ProductMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * 分类crudService业务层处理
 */
@Service
@RequiredArgsConstructor
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, Category> implements ICategoryService {
    private final CategoryMapper categoryMapper;
    private final ProductMapper productMapper;

    /**
     * 查询分类crud
     *
     * @param id 分类crud主键
     * @return 分类crud
     */
    @Override
    public Category selectCategoryById(Long id) {
        return categoryMapper.selectCategoryById(id);
    }

    /**
     * 查询分类crud列表
     *
     * @param category 分类crud
     * @return 分类crud
     */
    @Override
    public List<Category> selectCategoryList(Category category) {
        return categoryMapper.selectCategoryList(category);
    }

    /**
     * 新增分类crud
     *
     * @param category 分类crud
     * @return 结果
     */
    @Override
    public int insertCategory(Category category) {
        return categoryMapper.insertCategory(category);
    }

    /**
     * 修改分类crud
     *
     * @param category 分类crud
     * @return 结果
     */
    @Override
    public int updateCategory(Category category) {
        return categoryMapper.updateCategory(category);
    }

    /**
     * 批量删除分类crud
     *
     * @param ids 需要删除的分类crud主键
     * @return 结果
     */
    @Override
    public int deleteCategoryByIds(Long[] ids) {
        //检查分类是否被使用

        List<Product> goods = productMapper.selectList(new LambdaQueryWrapper<Product>().in(Product::getCategoryId, (Object) ids));
        if (goods.isEmpty()) {
            return categoryMapper.deleteCategoryByIds(ids);
        }
        throw new ServiceException("分类已分配，请先取消分配");
    }

    /**
     * 删除分类crud信息
     *
     * @param id 分类crud主键
     * @return 结果
     */
    @Override
    public int deleteCategoryById(Long id) {
        List<Product> goods = productMapper.selectList(new LambdaQueryWrapper<Product>().eq(Product::getCategoryId, id));
        if (!goods.isEmpty()) {
            throw new ServiceException("分类已分配，请先取消分配");
        }
        return categoryMapper.deleteCategoryById(id);
    }

    @Override
    public List<Category> getTree() {
        List<Category> categories = categoryMapper.selectList(null);
        return listToTree(categories, 0L);
    }

    private List<Category> listToTree(List<Category> list, Long parentId) {
        List<Category> tree = new ArrayList<>();
        for (Category category : list) {
            if (category.getParentId().equals(parentId)) {//找到儿子节点
                List<Category> children = listToTree(list, category.getId());//找到子节点的子节点
                category.setChildren(children);//为子节点设置孩子
                tree.add(category);
            }
        }
        return tree;
    }

    @Override
    public int deleteTreeByTargetId(List<Category> tree, Long targetId) {
        List<Long> deleteIds = new ArrayList<>();
        deleteIds = collectTreeNode(tree, targetId, deleteIds);
        return categoryMapper.deleteBatchIds(deleteIds);
    }

    private List<Long> collectTreeNode(List<Category> tree, Long targetId, List<Long> deleteIds) {
        for (Category categoryEntity : tree) {
            if (Objects.equals(categoryEntity.getId(), targetId)) {//如果当前结点为目标结点的话
                deleteIds.add(categoryEntity.getId());
                List<Category> children = categoryEntity.getChildren();
                if (!ObjectUtils.isEmpty(children)) {//如果儿子不为空，则将儿子的id也添加进去
                    for (Category child : children) {
                        collectTreeNode(children, child.getId(), deleteIds);
                    }
                }
            } else {//如果当前结点不是目标结点的话，就去当前结点的子节点中查找目标节点,找到则搜集
                List<Category> children = categoryEntity.getChildren();
                if (!ObjectUtils.isEmpty(children)) {
                    collectTreeNode(children, targetId, deleteIds);
                }
            }
        }
        return deleteIds;
    }

    @Override
    public List<Category> disableTreeNode(List<Category> tree, Long targetId) {
        for (Category categoryEntity : tree) {
            if (Objects.equals(categoryEntity.getId(), targetId)) {//如果当前结点为目标结点的话
                categoryEntity.setDisabled(true);
                List<Category> children = categoryEntity.getChildren();
                if (!ObjectUtils.isEmpty(children)) {//如果儿子不为空，则将儿子的disabled也设置为true
                    for (Category child : children) {
                        disableTreeNode(children, child.getId());
                    }
                }
            } else {//如果当前结点不是目标结点的话，就去当前结点的子节点中查找目标节点,找到则搜集
                List<Category> children = categoryEntity.getChildren();
                if (!ObjectUtils.isEmpty(children)) {
                    disableTreeNode(children, targetId);
                }
            }
        }
        return tree;
    }

    @Override
    public List<Category> getByCategoryIds(List<Long> ids) {
        return categoryMapper.selectList(new QueryWrapper<Category>().in("id", ids));
    }
}
