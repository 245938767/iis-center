package cn.iiss.products.product.mapper;

import cn.iiss.products.product.Product;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 商品管理Mapper接口
 * 
 */
@Mapper
public interface ProductMapper extends BaseMapper<Product>
{
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
     * @param product 商品管理
     * @return 商品管理集合
     */
    public List<Product> selectGoodsList(Product product);

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
     * 删除商品管理
     * 
     * @param id 商品管理主键
     * @return 结果
     */
    public int deleteGoodsById(Long id);

    /**
     * 批量删除商品管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteGoodsByIds(Long[] ids);
}
