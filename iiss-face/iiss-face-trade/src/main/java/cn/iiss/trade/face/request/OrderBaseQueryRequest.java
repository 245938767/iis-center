package cn.iiss.trade.face.request;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.model.Request;

@FieldDesc
public class OrderBaseQueryRequest implements Request {
    @FieldDesc(
            name = "用户id"
    )
    private Long userId;

    @FieldDesc(
            name = "订单类型、订单类型创建不同的状态机"
    )
    private Integer orderType;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }
}
