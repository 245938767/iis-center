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

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Long getCatLevel() {
        return catLevel;
    }

    public Long getParentId() {
        return parentId;
    }

    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public List<Category> getChildren() {
        return children;
    }

    public Boolean getDisabled() {
        return isDisabled;
    }

    public Category setId(Long id) {
        this.id = id;
        return this;
    }

    public Category setName(String name) {
        this.name = name;
        return this;
    }

    public Category setCatLevel(Long catLevel) {
        this.catLevel = catLevel;
        return this;
    }

    public Category setParentId(Long parentId) {
        this.parentId = parentId;
        return this;
    }

    public Category setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
        return this;
    }

    public Category setChildren(List<Category> children) {
        this.children = children;
        return this;
    }

    public Category setDisabled(Boolean disabled) {
        isDisabled = disabled;
        return this;
    }
}
