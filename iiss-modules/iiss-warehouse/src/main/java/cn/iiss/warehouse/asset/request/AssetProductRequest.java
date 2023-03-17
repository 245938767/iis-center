package cn.iiss.warehouse.asset.request;

import cn.iiss.commons.model.Request;
import cn.iiss.warehouse.assetrecord.WarehouseAssetBizType;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AssetProductRequest implements Request {

    @ApiModelProperty(value = "商品唯一ID(唯一)",required = true)
    @NotNull(message = "请填写商品ID")
    private Long productId;
    @ApiModelProperty(value = "商品业务属性",required = true)
    @NotNull(message = "请选择商品业务类型")
    private WarehouseAssetBizType warehouseAssetBizType;

    private String productImg;

    private String productSpecification;

    @ApiModelProperty(value = "单价")
    private BigDecimal price;
    @ApiModelProperty(value = "税款")
    private BigDecimal tax;
    @ApiModelProperty(value = "税率")
    private Double taxRate;
    @ApiModelProperty(value = "金额")
    private BigDecimal amount;
    private Long productNum;
}
