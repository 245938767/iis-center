package cn.iiss.products.product;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * 商品管理对象 goods
 *
 */
@Data
@ApiModel
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * $column.columnComment
     */
    @TableId(type = IdType.AUTO)
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
}
