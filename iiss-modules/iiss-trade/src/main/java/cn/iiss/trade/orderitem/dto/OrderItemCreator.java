package cn.iiss.trade.orderitem.dto;

import cn.iiss.commons.annotation.FieldDesc;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderItemCreator {

    @FieldDesc(name = "订单id")
    private Long orderId;

    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @FieldDesc(name = "真实金额")
    private BigDecimal realAmount;


    @FieldDesc(name = "单位")
    private String itemUnit;

    @FieldDesc(name = "商品名称")
    private String goodsName;

    @FieldDesc(name = "费用描述")
    private String feeRemark;

    private BigDecimal amount;


    @Schema(
            title = "计量单位"
    )
    private String measureUnit;

    @Schema(
            title = "商品ID/计费模型ID"
    )
    private String goodsId;

    @Schema(
            title = "商品编码"
    )
    private String goodsCode;

}
