package cn.iiss.warehouse.asset.request;

import cn.iiss.common.model.Request;
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

    @ApiModelProperty(value = "单价")
    private BigDecimal price;
    @ApiModelProperty(value = "税款")
    private BigDecimal tax;
    @ApiModelProperty(value = "税率")
    private Double taxRate;
    @ApiModelProperty(value = "金额")
    private BigDecimal amount;
    private Long productNum;
    @ApiModelProperty(value = "是否订单产品")
    private Boolean isOrderProduct;
    @ApiModelProperty(value = "订单号")
    private String orderNo;
}
