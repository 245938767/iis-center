package cn.iiss.trade.order.model;

import cn.iiss.order.commons.pay.PayGroup;
import cn.iiss.order.commons.pay.PayItem;
import cn.iiss.order.commons.pay.PayType;

import java.math.BigDecimal;

public class IsPayItem implements PayItem {
    public IsPayItem(BigDecimal money) {
        this.money = money;
        this.payGroup = PayGroup.THIRD_PAY;
        this.payType = PayType.COIN;
    }

    public IsPayItem(BigDecimal money, PayGroup payGroup, PayType payType) {
        this.money = money;
        this.payGroup = payGroup;
        this.payType = payType;
    }

    private BigDecimal money;
    private PayGroup payGroup;
    private PayType payType;

    @Override
    public BigDecimal getMoney() {
        return money;
    }

    @Override
    public PayGroup getPayGroup() {
        return payGroup;
    }

    @Override
    public PayType getPayType() {
        return payType;
    }
}
