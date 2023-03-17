package cn.iiss.products.product.service;



import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.product.face.model.Product;

import java.util.List;

/**
 * 商品管理Service接口
 *
 */
public interface IProductService {
    /**
     * 查询商品管理
     *
     * @param id 商品管理主键
     * @return 商品管理
     */
    public Product selectGoodsById(Long id);

    /**
     * 查询商品管理列表
     *
     * @param queryRequest 商品管理
     * @return 商品管理集合
     */
    public List<Product> selectGoodsList(ProductQueryRequest queryRequest);

    /**
     * 新增商品管理
     *
     * @param product 商品管理
     * @return 结果
     */
    public int insertGoods(Product product);

    /**
     * 修改商品管理
     *
     * @param product 商品管理
     * @return 结果
     */
    public int updateGoods(Product product);

    /**
     * 批量删除商品管理
     *
     * @param ids 需要删除的商品管理主键集合
     * @return 结果
     */
    public int deleteGoodsByIds(Long[] ids);

    /**
     * 删除商品管理信息
     *
     * @param id 商品管理主键
     * @return 结果
     */
    public int deleteGoodsById(Long id);

    public int deleteTreeByTargetIds(List<Long> targetIds);



    public List<Product> selectByIds(List<Long> ids);


    List<Product> getGoodsByCategoryId(Long categoryId);

    List<Product> getForAllList();
}
