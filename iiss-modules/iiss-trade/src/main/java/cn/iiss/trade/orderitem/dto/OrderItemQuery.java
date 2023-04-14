package cn.iiss.trade.orderitem.dto;

import cn.iiss.commons.annotation.FieldDesc;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderItemQuery {

    @FieldDesc(name = "订单id")
    private Long orderId;

    @FieldDesc(name = "唯一流水号")
    private Long flowNo;


    @FieldDesc(name = "计量数量")
    private BigDecimal itemCount;

    @FieldDesc(name = "skuId")
    private String skuId;

    @FieldDesc(name = "单位")
    private String itemUnit;

    @FieldDesc(name = "商品名称")
    private String productName;

}
