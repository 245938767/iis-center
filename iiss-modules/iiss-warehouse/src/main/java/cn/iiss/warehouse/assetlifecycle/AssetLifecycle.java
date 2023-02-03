package cn.iiss.warehouse.assetlifecycle;


import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.assetrecord.WarehouseAssetBizType;
import cn.iiss.commons.annotation.FieldDesc;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Builder;

import java.io.Serializable;
import java.math.BigDecimal;

@Builder
public class AssetLifecycle implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    @FieldDesc(name = "和商品的关联")
    private Long warehouseAssetId;

    @FieldDesc(name = "仓库名称")
    private String houseName;
    @FieldDesc(name = "操作人")
    private String operateUser;

    @FieldDesc(name = "商品图片")
    private String productImg;
    @FieldDesc(name = "商品代码")
    private String productCode;
    @FieldDesc(name = "商品名称")
    private String productName;
    @FieldDesc(name = "商品业务属性")
    private WarehouseAssetBizType warehouseAssetBizType;
    @FieldDesc(name = "商品规格")
    private String productSpecification;
    @FieldDesc(name = "批次号")
    private String batchNo;

    @FieldDesc(name = "出入库业务类型")
    private InOutBizType inOutBizType;
    @FieldDesc(name = "出入库类型")
    private InOutType inOutType;


    @FieldDesc(name = "单价")
    private BigDecimal price;
    @FieldDesc(name = "税款")
    private BigDecimal tax;
    @FieldDesc(name = "税率")
    private Double taxRate;
    @FieldDesc(name = "金额")
    private BigDecimal amount;
    private Long productNum;
    @FieldDesc(name = "是否订单产品")
    private Boolean isOrderProduct;
    @FieldDesc(name = "订单号")
    private String orderNo;

    public Long getId() {
        return id;
    }

    public Long getWarehouseAssetId() {
        return warehouseAssetId;
    }

    public String getHouseName() {
        return houseName;
    }

    public String getOperateUser() {
        return operateUser;
    }

    public String getProductImg() {
        return productImg;
    }

    public String getProductCode() {
        return productCode;
    }

    public String getProductName() {
        return productName;
    }

    public WarehouseAssetBizType getWarehouseAssetBizType() {
        return warehouseAssetBizType;
    }

    public String getProductSpecification() {
        return productSpecification;
    }

    public String getBatchNo() {
        return batchNo;
    }

    public InOutBizType getInOutBizType() {
        return inOutBizType;
    }

    public InOutType getInOutType() {
        return inOutType;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public BigDecimal getTax() {
        return tax;
    }

    public Double getTaxRate() {
        return taxRate;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public Long getProductNum() {
        return productNum;
    }

    public Boolean getOrderProduct() {
        return isOrderProduct;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public AssetLifecycle setId(Long id) {
        this.id = id;
        return this;
    }

    public AssetLifecycle setWarehouseAssetId(Long warehouseAssetId) {
        this.warehouseAssetId = warehouseAssetId;
        return this;
    }

    public AssetLifecycle setHouseName(String houseName) {
        this.houseName = houseName;
        return this;
    }

    public AssetLifecycle setOperateUser(String operateUser) {
        this.operateUser = operateUser;
        return this;
    }

    public AssetLifecycle setProductImg(String productImg) {
        this.productImg = productImg;
        return this;
    }

    public AssetLifecycle setProductCode(String productCode) {
        this.productCode = productCode;
        return this;
    }

    public AssetLifecycle setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public AssetLifecycle setWarehouseAssetBizType(WarehouseAssetBizType warehouseAssetBizType) {
        this.warehouseAssetBizType = warehouseAssetBizType;
        return this;
    }

    public AssetLifecycle setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
        return this;
    }

    public AssetLifecycle setBatchNo(String batchNo) {
        this.batchNo = batchNo;
        return this;
    }

    public AssetLifecycle setInOutBizType(InOutBizType inOutBizType) {
        this.inOutBizType = inOutBizType;
        return this;
    }

    public AssetLifecycle setInOutType(InOutType inOutType) {
        this.inOutType = inOutType;
        return this;
    }

    public AssetLifecycle setPrice(BigDecimal price) {
        this.price = price;
        return this;
    }

    public AssetLifecycle setTax(BigDecimal tax) {
        this.tax = tax;
        return this;
    }

    public AssetLifecycle setTaxRate(Double taxRate) {
        this.taxRate = taxRate;
        return this;
    }

    public AssetLifecycle setAmount(BigDecimal amount) {
        this.amount = amount;
        return this;
    }

    public AssetLifecycle setProductNum(Long productNum) {
        this.productNum = productNum;
        return this;
    }

    public AssetLifecycle setOrderProduct(Boolean orderProduct) {
        isOrderProduct = orderProduct;
        return this;
    }

    public AssetLifecycle setOrderNo(String orderNo) {
        this.orderNo = orderNo;
        return this;
    }
}
