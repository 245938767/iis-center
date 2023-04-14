package cn.iiss.trade.mapper;


import cn.iiss.trade.order.domainservice.model.OrderType;
import cn.iiss.trade.order.OrderState;
import cn.iiss.trade.orderlifecycle.OrderOperateType;

/**
 * 枚举自定义转化
 * 在实体类中的枚举都要进行配置
 */
public class TradeMapper {


    public Integer orderType2Int(OrderType orderType) {
        return orderType.getCode();
    }

    public OrderType int2OrderType(Integer code) {
        return OrderType.of(code).orElse(OrderType.CHARGE);
    }


    public Integer opType2Int(OrderOperateType type) {
        return type.getCode();
    }

    public OrderOperateType int2OpType(Integer code) {
        return OrderOperateType.of(code).orElse(OrderOperateType.AUTH_SUCCESS);
    }

    public Integer status2OrderState(OrderState state) {
        return state.getCode();
    }

    public OrderState state2Int(Integer code) {
        return OrderState.of(code).orElse(OrderState.WAIT_PAY);
    }


}
