package cn.iiss.trade.order.domainservice.model;

import cn.iiss.commons.annotation.FieldDesc;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Builder
public class OrderItemModel {

  @FieldDesc(name = "真实金额")
  private BigDecimal realAmount;

  @FieldDesc(name = "计量数量")
  private Integer itemCount;

  @FieldDesc(name = "skuId")
  private Long skuId;

  @FieldDesc(name = "商品名称")
  private String productName;

  @FieldDesc(name = "费用描述")
  private String feeRemark;

  public BigDecimal getRealAmount() {
    return realAmount;
  }

  public OrderItemModel setRealAmount(BigDecimal realAmount) {
    this.realAmount = realAmount;
    return this;
  }

  public Integer getItemCount() {
    return itemCount;
  }

  public OrderItemModel setItemCount(Integer itemCount) {
    this.itemCount = itemCount;
    return this;
  }

  public Long getSkuId() {
    return skuId;
  }

  public OrderItemModel setSkuId(Long skuId) {
    this.skuId = skuId;
    return this;
  }

  public String getProductName() {
    return productName;
  }

  public OrderItemModel setProductName(String productName) {
    this.productName = productName;
    return this;
  }

  public String getFeeRemark() {
    return feeRemark;
  }

  public OrderItemModel setFeeRemark(String feeRemark) {
    this.feeRemark = feeRemark;
    return this;
  }
}
