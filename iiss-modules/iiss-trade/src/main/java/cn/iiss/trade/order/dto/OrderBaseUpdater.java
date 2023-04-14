package cn.iiss.trade.order.dto;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.annotation.TypeConverter;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.order.commons.pay.PayItem;
import cn.iiss.trade.order.domainservice.model.OrderType;
import cn.iiss.trade.order.OrderBase;
import cn.iiss.trade.order.OrderState;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.List;

@Data
public class OrderBaseUpdater {

    private Long id;
    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @NotNull(message = "订单金额不能为空")
    @FieldDesc(name = "订单金额")
    private BigDecimal totalAmount;

    @FieldDesc(name = "账号Id")
    private Long accountId;


    @FieldDesc(name = "订单类型、订单类型创建不同的状态机")
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    private OrderType orderType;

    @FieldDesc(name = "支付详情")
    private List<PayItem> payList;

    @FieldDesc(name = "待支付金额")
    private BigDecimal waitPay;

    @FieldDesc(name = "支付时间")
    private Long payTime;

    @FieldDesc(name = "订单状态")
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    private OrderState orderState;

    private ValidStatus validStatus;

    /**
     * 系统压力不大的时候可以这里放，压力大千万不要放这里，额外的表或者es都可以
     */

    @FieldDesc(name = "是否开票")
    private ValidStatus invoiceFlag;

    public OrderBase updateOrderBase(OrderBase e) {
        e.setTotalAmount(totalAmount);
        return e;
    }
}
