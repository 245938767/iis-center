package cn.iiss.trade.order.events;

import cn.iiss.trade.order.domainservice.model.OrderCompleteModel;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.order.domainservice.model.OrderReviseModel;
import cn.iiss.trade.order.OrderBase;
import lombok.Value;

public interface OrderEvents {

    /**
     * 订单创建事件
     */
    @Value
    class OrderCreateEvent {
        OrderBase orderBase;
        OrderCreateModel createModel;
    }

    /**
     * 订单完成事件
     */
    @Value
    class OrderCompleteEvent {

        OrderBase orderBase;
        OrderCompleteModel completeModel;
    }

    /**
     * 订单修订事件
     */
    @Value
    class OrderReviseEvent {

        OrderBase orderBase;
        OrderReviseModel reviseModel;
    }

    /**
     * 订单取消事件
     */
    @Value
    class OrderCancelEvent {

        OrderBase orderBase;
    }


}
