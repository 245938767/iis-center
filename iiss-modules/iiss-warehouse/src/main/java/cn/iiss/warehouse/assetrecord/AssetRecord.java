package cn.iiss.warehouse.assetrecord;

import cn.iiss.warehouse.asset.InOutType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.common.constants.ValidStatus;
import lombok.Builder;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;

@Builder
public class AssetRecord implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;
    @TableId(type = IdType.AUTO)
    private Long id;
    @FieldDesc(name = "状态")
    private ValidStatus validStatus;
    @FieldDesc(name = "资产记录ID")
    private Long assetId;
    @FieldDesc(name = "批次号")
    private String batchNo;
    @FieldDesc(name = "仓库ID(唯一)")
    private Long houseId;
    @FieldDesc(name = "仓库名称")
    private String houseName;
    @FieldDesc(name = "操作人")
    private String operateUser;

    private InOutType inOutType;

    @FieldDesc(name = "商品唯一ID(唯一)")
    private Long productId;
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

    public ValidStatus getValidStatus() {
        return validStatus;
    }

    public Long getAssetId() {
        return assetId;
    }

    public String getBatchNo() {
        return batchNo;
    }

    public Long getHouseId() {
        return houseId;
    }

    public String getHouseName() {
        return houseName;
    }

    public String getOperateUser() {
        return operateUser;
    }

    public InOutType getInOutType() {
        return inOutType;
    }

    public Long getProductId() {
        return productId;
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

    public AssetRecord setId(Long id) {
        this.id = id;
        return this;
    }

    public AssetRecord setValidStatus(ValidStatus validStatus) {
        this.validStatus = validStatus;
        return this;
    }

    public AssetRecord setAssetId(Long assetId) {
        this.assetId = assetId;
        return this;
    }

    public AssetRecord setBatchNo(String batchNo) {
        this.batchNo = batchNo;
        return this;
    }

    public AssetRecord setHouseId(Long houseId) {
        this.houseId = houseId;
        return this;
    }

    public AssetRecord setHouseName(String houseName) {
        this.houseName = houseName;
        return this;
    }

    public AssetRecord setOperateUser(String operateUser) {
        this.operateUser = operateUser;
        return this;
    }

    public AssetRecord setInOutType(InOutType inOutType) {
        this.inOutType = inOutType;
        return this;
    }

    public AssetRecord setProductId(Long productId) {
        this.productId = productId;
        return this;
    }

    public AssetRecord setProductImg(String productImg) {
        this.productImg = productImg;
        return this;
    }

    public AssetRecord setProductCode(String productCode) {
        this.productCode = productCode;
        return this;
    }

    public AssetRecord setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public AssetRecord setWarehouseAssetBizType(WarehouseAssetBizType warehouseAssetBizType) {
        this.warehouseAssetBizType = warehouseAssetBizType;
        return this;
    }

    public AssetRecord setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
        return this;
    }

    public AssetRecord setPrice(BigDecimal price) {
        this.price = price;
        return this;
    }

    public AssetRecord setTax(BigDecimal tax) {
        this.tax = tax;
        return this;
    }

    public AssetRecord setTaxRate(Double taxRate) {
        this.taxRate = taxRate;
        return this;
    }

    public AssetRecord setAmount(BigDecimal amount) {
        this.amount = amount;
        return this;
    }

    public AssetRecord setProductNum(Long productNum) {
        this.productNum = productNum;
        return this;
    }

    public AssetRecord setOrderProduct(Boolean orderProduct) {
        isOrderProduct = orderProduct;
        return this;
    }

    public AssetRecord setOrderNo(String orderNo) {
        this.orderNo = orderNo;
        return this;
    }
}
