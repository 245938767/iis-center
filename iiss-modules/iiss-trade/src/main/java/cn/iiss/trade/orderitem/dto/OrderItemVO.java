package cn.iiss.trade.orderitem.dto;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.trade.orderitem.OrderItem;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderItemVO {

    @FieldDesc(name = "订单id")
    private Long orderId;

    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @FieldDesc(name = "真实金额")
    private BigDecimal realAmount;

    @FieldDesc(name = "计量数量")
    private BigDecimal itemCount;

    @FieldDesc(name = "skuId")
    private String skuId;

    @FieldDesc(name = "单位")
    private String itemUnit;

    @FieldDesc(name = "商品名称")
    private String goodsName;

    @FieldDesc(name = "费用描述")
    private String feeRemark;

    public OrderItemVO(OrderItem orderItem) {
    }
}
