package cn.iiss.trade.order.domainservice.model;

import cn.iiss.order.commons.pay.PayItem;
import lombok.Data;

import java.util.List;

@Data
public class OrderCompleteModel {

  private Long flowNo;

  private List<PayItem> payItemList;

  private Long payTime;

  public Long getFlowNo() {
    return flowNo;
  }

  public OrderCompleteModel setFlowNo(Long flowNo) {
    this.flowNo = flowNo;
    return this;
  }

  public List<PayItem> getPayItemList() {
    return payItemList;
  }

  public OrderCompleteModel setPayItemList(List<PayItem> payItemList) {
    this.payItemList = payItemList;
    return this;
  }

  public Long getPayTime() {
    return payTime;
  }

  public OrderCompleteModel setPayTime(Long payTime) {
    this.payTime = payTime;
    return this;
  }
}
