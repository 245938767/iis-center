package cn.iiss.product.face.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel
@Builder
public class GoodsVo implements Serializable {
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
    private String productName;

    /**
     * 分类id
     */
    @ApiModelProperty("分类id")
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

}
