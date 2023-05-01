package cn.iiss.products.product.service;

import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.common.core.exception.ServiceException;
import cn.iiss.product.face.model.Product;
import cn.iiss.products.category.Category;
import cn.iiss.products.category.mapper.CategoryMapper;
import cn.iiss.products.product.mapper.ProductMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品管理Service业务层处理
 */
@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements IProductService {
    private final ProductMapper productMapper;
    private final CategoryMapper categoryMapper;

    /**
     * 查询商品管理
     *
     * @param id 商品管理主键
     * @return 商品管理
     */
    @Override
    public Product selectGoodsById(Long id) {
        return productMapper.selectGoodsById(id);
    }

    /**
     * 查询商品管理列表
     *
     * @param queryRequest 商品管理
     * @return 商品管理
     */
    @Override
    public List<Product> selectGoodsList(ProductQueryRequest queryRequest) {
        return productMapper.selectGoodsList(queryRequest);
    }

    /**
     * 新增商品管理
     *
     * @param product 商品管理
     * @return 结果
     */
    @Override
    public int insertGoods(Product product) {
        validateGood(product);
        Category category = categoryMapper.selectById(product.getCategoryId());
        product.setCategoryName(category.getName());
        return productMapper.insertGoods(product);
    }

    /**
     * 修改商品管理
     *
     * @param product 商品管理
     * @return 结果
     */
    @Override
    public int updateGoods(Product product) {
        validateGood(product);
        return productMapper.updateGoods(product);
    }

    /**
     * 批量删除商品管理
     *
     * @param ids 需要删除的商品管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodsByIds(Long[] ids) {
        return productMapper.deleteGoodsByIds(ids);
    }

    /**
     * 删除商品管理信息
     *
     * @param id 商品管理主键
     * @return 结果
     */
    @Override
    public int deleteGoodsById(Long id) {
        return productMapper.deleteGoodsById(id);
    }

    @Override
    public int deleteTreeByTargetIds(List<Long> targetIds) {
        return productMapper.deleteBatchIds(targetIds);
    }


    @Override
    public List<Product> selectByIds(List<Long> ids) {
        return productMapper.selectList(new QueryWrapper<Product>().in("id", ids));
    }

    @Override
    public List<Product> getGoodsByCategoryId(Long categoryId) {
        return productMapper.selectList(new QueryWrapper<Product>().eq("category_id", categoryId));
    }

    @Override
    public List<Product> getForAllList() {
        return productMapper.selectList(new LambdaQueryWrapper<>());
    }


    private void validateGood(Product product) {
        LambdaQueryWrapper<Product> objectLambdaQueryWrapper = new LambdaQueryWrapper<>();
        objectLambdaQueryWrapper.eq(Product::getProductName, product.getProductName());
        objectLambdaQueryWrapper.eq(Product::getCategoryId, product.getCategoryId());
        if (product.getId() != null) {
            //如果是更新的话忽略id
            objectLambdaQueryWrapper.ne(Product::getId, product.getId());
        }
        if (product.getBrand() != null) {
            objectLambdaQueryWrapper.eq(Product::getBrand, product.getBrand());
        }
        if (product.getProductSpecification() != null) {
            objectLambdaQueryWrapper.eq(Product::getProductSpecification, product.getProductSpecification());
        }
        if (product.getModel() != null) {
            objectLambdaQueryWrapper.eq(Product::getModel, product.getModel());
        }
        if (!productMapper.selectList(objectLambdaQueryWrapper).isEmpty()) {
            throw new ServiceException("商品信息重复请重新输入");
        }
    }
}
