package cn.iiss.trade.order.domainservice.model;

import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.order.commons.pay.PayItem;
import cn.iiss.trade.face.model.OrderItemModel;
import lombok.Data;

import java.util.List;

/**
 * 订单创建模型
 */
@Data
public class OrderCreateModel {

  @FieldDesc(name = "账号Id")
  private Long accountId;

  @FieldDesc(name = "订单类型、订单类型创建不同的状态机")
  private OrderType orderType;

  @FieldDesc(name = "支付详情")
  private List<PayItem> payList;

  @FieldDesc(name = "订单属性信息")
  private List<CodeValue> attrs;

  @FieldDesc(name = "订单项列表")
  private List<OrderItemModel> itemInfoList;
  
  @FieldDesc(name = "操作人")
  private String operateUser;

  public Long getAccountId() {
    return accountId;
  }

  public OrderCreateModel setAccountId(Long accountId) {
    this.accountId = accountId;
    return this;
  }

  public OrderType getOrderType() {
    return orderType;
  }

  public OrderCreateModel setOrderType(OrderType orderType) {
    this.orderType = orderType;
    return this;
  }

  public List<PayItem> getPayList() {
    return payList;
  }

  public OrderCreateModel setPayList(List<PayItem> payList) {
    this.payList = payList;
    return this;
  }

  public List<CodeValue> getAttrs() {
    return attrs;
  }

  public OrderCreateModel setAttrs(List<CodeValue> attrs) {
    this.attrs = attrs;
    return this;
  }

  public List<OrderItemModel> getItemInfoList() {
    return itemInfoList;
  }

  public OrderCreateModel setItemInfoList(List<OrderItemModel> itemInfoList) {
    this.itemInfoList = itemInfoList;
    return this;
  }

  public String getOperateUser() {
    return operateUser;
  }

  public OrderCreateModel setOperateUser(String operateUser) {
    this.operateUser = operateUser;
    return this;
  }
}
