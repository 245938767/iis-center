package cn.iiss.product.face.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * 商品管理对象 goods
 */
@ApiModel
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * $column.columnComment
     */
    private Long id;
    /**
     * 商品代码
     */
    @ApiModelProperty("商品代码")
    private String productCode;

    /**
     * 商品名
     */
    @ApiModelProperty("商品名")
    @NotBlank(message = "请输入商品名称")
    private String productName;

    /**
     * 分类id
     */
    @ApiModelProperty("分类id")
    @NotNull(message = "请选择所属分类")
    private Long categoryId;

    /**
     * 品牌
     */
    @ApiModelProperty("品牌")
    private String brand;

    /**
     * 备注
     */
    @ApiModelProperty("备注")
    private String note;

    /**
     * 规格
     */
    @ApiModelProperty("规格")
    private String productSpecification;

    /**
     * 型号
     */
    @ApiModelProperty("型号")
    private String model;

    /**
     * 单位
     */
    @ApiModelProperty("单位")
    private String unit;

    /**
     * 商品图片
     */
    @ApiModelProperty("商品图片")
    private String productImg;

    public Long getId() {
        return id;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductName() {
        return productName;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public String getBrand() {
        return brand;
    }

    public String getNote() {
        return note;
    }

    public String getProductSpecification() {
        return productSpecification;
    }

    public String getModel() {
        return model;
    }

    public String getUnit() {
        return unit;
    }

    public String getProductImg() {
        return productImg;
    }

    public Product setId(Long id) {
        this.id = id;
        return this;
    }

    public Product setProductCode(String productCode) {
        this.productCode = productCode;
        return this;
    }

    public Product setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public Product setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
        return this;
    }

    public Product setBrand(String brand) {
        this.brand = brand;
        return this;
    }

    public Product setNote(String note) {
        this.note = note;
        return this;
    }

    public Product setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
        return this;
    }

    public Product setModel(String model) {
        this.model = model;
        return this;
    }

    public Product setUnit(String unit) {
        this.unit = unit;
        return this;
    }

    public Product setProductImg(String productImg) {
        this.productImg = productImg;
        return this;
    }
}
