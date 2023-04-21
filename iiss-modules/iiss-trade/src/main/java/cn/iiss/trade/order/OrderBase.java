package cn.iiss.trade.order;

import cn.hutool.core.collection.IterUtil;
import cn.hutool.core.util.NumberUtil;
import cn.iiss.common.core.constant.OrderErrorCode;
import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.annotation.TypeConverter;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.mybatis.support.BaseMybatisAggregate;
import cn.iiss.order.commons.pay.PayItem;
import cn.iiss.trade.order.domainservice.model.OrderCompleteModel;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.order.domainservice.model.OrderType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.FastjsonTypeHandler;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;
import java.util.Objects;


@EqualsAndHashCode(callSuper = false)
@TableName(autoResultMap = true)
@Data
public class OrderBase extends BaseMybatisAggregate {

    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @NotNull(message = "订单金额不能为空")
    @FieldDesc(name = "订单金额")
    private BigDecimal totalAmount;

    @FieldDesc(name = "账号Id")
    private Long accountId;


    @FieldDesc(name = "订单类型、订单类型创建不同的状态机")
    @TableField(typeHandler = OrderTypeConverter.class)
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    private OrderType orderType;

    @FieldDesc(name = "支付详情")
    @TableField(typeHandler = FastjsonTypeHandler.class)
    private List<PayItem> payList;

    @FieldDesc(name = "待支付金额")
    private BigDecimal waitPay;

    @FieldDesc(name = "支付时间")
    private Long payTime;

    @FieldDesc(name = "订单状态")
    @TableField(typeHandler = OrderStateConverter.class)
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    private OrderState orderState;

    @TableField(typeHandler = ValidStatusConverter.class)
    private ValidStatus validStatus;

    /**
     * 系统压力不大的时候可以这里放，压力大千万不要放这里，额外的表或者es都可以
     */
    @FieldDesc(name = "订单信息")
    @TableField(typeHandler = FastjsonTypeHandler.class)
    private List<CodeValue> attrs;

    @FieldDesc(name = "是否开票")
    @TableField(typeHandler = ValidStatusConverter.class)
    private ValidStatus invoiceFlag;

    /**
     * 订单初始化
     *
     * @param createModel
     */
    public void init(OrderCreateModel createModel) {
        setValidStatus(ValidStatus.VALID);
        setInvoiceFlag(ValidStatus.INVALID);
        BigDecimal total = getTotalAmount();
        //如果有虚拟资产的抵扣
        if (!IterUtil.isEmpty(createModel.getPayList())) {
            setPayList(createModel.getPayList());
            BigDecimal hasPay = payList.stream().map(PayItem::getMoney)
                    .reduce(BigDecimal.ZERO, NumberUtil::add);
            if (NumberUtil.isGreater(hasPay, total)) {
                throw new BusinessException(OrderErrorCode.PAY_TOO_BIG);
            } else if (NumberUtil.equals(hasPay, total)) {
                setOrderState(OrderState.PAY_SUCCESS);
                setWaitPay(BigDecimal.ZERO);
            } else {
                setOrderState(OrderState.WAIT_PAY);
                setWaitPay(NumberUtil.sub(total, hasPay));
            }
        } else {
            //没有虚拟资产抵扣
            setPayList(Collections.EMPTY_LIST);
            if (NumberUtil.equals(total, BigDecimal.ZERO)) {
                setOrderState(OrderState.PAY_SUCCESS);
                setWaitPay(BigDecimal.ZERO);
            } else {
                setWaitPay(total);
                setOrderState(OrderState.WAIT_PAY);
            }
        }
    }

    /**
     * 订单完成
     *
     * @param completeModel
     */
    public void complete(OrderCompleteModel completeModel) {
        if (!Objects.equals(OrderState.WAIT_PAY, getOrderState())) {
            throw new BusinessException(OrderErrorCode.ORDER_NOT_WAIT_PAY);
        }
        if (IterUtil.isEmpty(completeModel.getPayItemList())) {
            throw new BusinessException(OrderErrorCode.PAY_LIST_IS_NULL);
        }
        BigDecimal hasPay = completeModel.getPayItemList().stream().map(PayItem::getMoney)
                .reduce(BigDecimal.ZERO, NumberUtil::add);
        if (!NumberUtil.equals(hasPay, getWaitPay())) {
            throw new BusinessException(OrderErrorCode.PAY_AMOUNT_NOT_EQUAL_WAIT_PAY);
        }
        setPayTime(completeModel.getPayTime());
        List<PayItem> payItemList = getPayList();
        payItemList.addAll(completeModel.getPayItemList());
        setPayList(payItemList);
        setOrderState(OrderState.PAY_SUCCESS);
    }

    /**
     * 取消订单
     */
    public void cancel() {
        if (!Objects.equals(OrderState.WAIT_PAY, getOrderState())) {
            throw new BusinessException(OrderErrorCode.ORDER_NOT_WAIT_PAY);
        }
        setOrderState(OrderState.ABANDON);
    }

    public void valid() {
        setValidStatus(ValidStatus.VALID);
    }

    public void invalid() {
        setValidStatus(ValidStatus.INVALID);
    }

}
