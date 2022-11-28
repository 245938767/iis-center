package cn.iiss.products.category;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 分类crud对象 category
 * 
 */
@Data
@TableName("category")
@ApiModel
public class Category implements Serializable
{
    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("分类id")
    private Long id;
    @ApiModelProperty("分类名")
    private String name;
    @ApiModelProperty("分类级别")
    private Long catLevel;
    @ApiModelProperty("父id")
    private Long parentId;
    private Integer deleteFlag;
    @TableField(exist = false)
    @ApiModelProperty("子节点")
    private List<Category> children;
    @ApiModelProperty("禁用标志")
    @TableField(exist = false)
    private Boolean isDisabled;
}
