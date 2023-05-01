package cn.iiss.product.face.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 商品管理对象 goods
 */
@ApiModel
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * $column.columnComment
     */
    private String id;
    /**
     * 商品代码
     */
    @ApiModelProperty("商品代码")
    private String productCode;

    @ApiModelProperty("采购价格")
    private BigDecimal purchasePrice;
    @ApiModelProperty("销售价格")
    private BigDecimal sellingPrice;

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
    private String categoryName;

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


}
