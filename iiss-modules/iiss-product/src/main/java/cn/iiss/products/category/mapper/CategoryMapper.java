package cn.iiss.products.category.mapper;

import cn.iiss.products.category.Category;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 分类crudMapper接口
 * 
 */
@Mapper
public interface CategoryMapper extends BaseMapper<Category>
{
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
     * 删除分类crud
     * 
     * @param id 分类crud主键
     * @return 结果
     */
    public int deleteCategoryById(Long id);

    /**
     * 批量删除分类crud
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCategoryByIds(Long[] ids);
    @Select("select * from category")
    List<Category> list();
}
