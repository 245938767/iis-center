package cn.iiss.trade.order.dto;

import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.common.core.utils.bean.BeanUtils;
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
public class OrderBaseVO {

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

    @FieldDesc(name = "订单信息")
    private List<CodeValue> attrs;

    public OrderBaseVO(OrderBase entity) {
        BeanUtils.copyBeanProp(this, entity);
    }

    public Long getFlowNo() {
        return flowNo;
    }

    public OrderBaseVO setFlowNo(Long flowNo) {
        this.flowNo = flowNo;
        return this;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public OrderBaseVO setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
        return this;
    }

    public Long getAccountId() {
        return accountId;
    }

    public OrderBaseVO setAccountId(Long accountId) {
        this.accountId = accountId;
        return this;
    }

    public OrderType getOrderType() {
        return orderType;
    }

    public OrderBaseVO setOrderType(OrderType orderType) {
        this.orderType = orderType;
        return this;
    }

    public List<PayItem> getPayList() {
        return payList;
    }

    public OrderBaseVO setPayList(List<PayItem> payList) {
        this.payList = payList;
        return this;
    }

    public BigDecimal getWaitPay() {
        return waitPay;
    }

    public OrderBaseVO setWaitPay(BigDecimal waitPay) {
        this.waitPay = waitPay;
        return this;
    }

    public Long getPayTime() {
        return payTime;
    }

    public OrderBaseVO setPayTime(Long payTime) {
        this.payTime = payTime;
        return this;
    }

    public OrderState getOrderState() {
        return orderState;
    }

    public OrderBaseVO setOrderState(OrderState orderState) {
        this.orderState = orderState;
        return this;
    }

    public ValidStatus getValidStatus() {
        return validStatus;
    }

    public OrderBaseVO setValidStatus(ValidStatus validStatus) {
        this.validStatus = validStatus;
        return this;
    }

    public ValidStatus getInvoiceFlag() {
        return invoiceFlag;
    }

    public OrderBaseVO setInvoiceFlag(ValidStatus invoiceFlag) {
        this.invoiceFlag = invoiceFlag;
        return this;
    }

    public List<CodeValue> getAttrs() {
        return attrs;
    }

    public OrderBaseVO setAttrs(List<CodeValue> attrs) {
        this.attrs = attrs;
        return this;
    }
}
