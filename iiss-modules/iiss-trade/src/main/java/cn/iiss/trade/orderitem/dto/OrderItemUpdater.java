package cn.iiss.trade.orderitem.dto;

import cn.iiss.common.core.utils.bean.BeanUtils;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.trade.orderitem.OrderItem;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderItemUpdater {
    private Long id;

    @FieldDesc(name = "订单id")
    private Long orderId;

    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @FieldDesc(name = "真实金额")
    private BigDecimal realAmount;

    @FieldDesc(name = "计量数量")
    private BigDecimal itemCount;

    @FieldDesc(name = "skuId")
    private String skuId;

    @FieldDesc(name = "单位")
    private String itemUnit;

    @FieldDesc(name = "商品名称")
    private String productName;

    @FieldDesc(name = "费用描述")
    private String feeRemark;

    public void updateOrderItem(OrderItem e) {
        BeanUtils.copyBeanProp(e, this);
    }

    public Long getId() {
        return id;
    }

    public OrderItemUpdater setId(Long id) {
        this.id = id;
        return this;
    }

    public Long getOrderId() {
        return orderId;
    }

    public OrderItemUpdater setOrderId(Long orderId) {
        this.orderId = orderId;
        return this;
    }

    public Long getFlowNo() {
        return flowNo;
    }

    public OrderItemUpdater setFlowNo(Long flowNo) {
        this.flowNo = flowNo;
        return this;
    }

    public BigDecimal getRealAmount() {
        return realAmount;
    }

    public OrderItemUpdater setRealAmount(BigDecimal realAmount) {
        this.realAmount = realAmount;
        return this;
    }

    public BigDecimal getItemCount() {
        return itemCount;
    }

    public OrderItemUpdater setItemCount(BigDecimal itemCount) {
        this.itemCount = itemCount;
        return this;
    }

    public String getSkuId() {
        return skuId;
    }

    public OrderItemUpdater setSkuId(String skuId) {
        this.skuId = skuId;
        return this;
    }

    public String getItemUnit() {
        return itemUnit;
    }

    public OrderItemUpdater setItemUnit(String itemUnit) {
        this.itemUnit = itemUnit;
        return this;
    }

    public String getProductName() {
        return productName;
    }

    public OrderItemUpdater setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public String getFeeRemark() {
        return feeRemark;
    }

    public OrderItemUpdater setFeeRemark(String feeRemark) {
        this.feeRemark = feeRemark;
        return this;
    }
}
