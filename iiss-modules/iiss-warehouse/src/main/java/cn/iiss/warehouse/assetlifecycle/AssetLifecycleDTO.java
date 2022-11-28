package cn.iiss.warehouse.assetlifecycle;

import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.assetrecord.WarehouseAssetBizType;
import lombok.Builder;
import lombok.Getter;

import java.io.Serializable;
import java.math.BigDecimal;

@Getter
@Builder
public class AssetLifecycleDTO implements Serializable {

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

    public AssetLifecycle dto2AssetLife(Long warehouseAssetId) {
        return AssetLifecycle.builder()
                .warehouseAssetId(warehouseAssetId)
                .houseName(houseName)
                .operateUser(operateUser)
                .productImg(productImg)
                .productCode(productCode)
                .productNum(productNum)
                .productSpecification(productSpecification)
                .productName(productName)
                .warehouseAssetBizType(warehouseAssetBizType)
                .batchNo(batchNo)
                .inOutBizType(inOutBizType)
                .inOutType(inOutType)
                .price(price)
                .tax(tax)
                .taxRate(taxRate)
                .amount(amount)
                .isOrderProduct(isOrderProduct)
                .orderNo(orderNo)
                .build();
    }
    public AssetLifecycleDTO assetLifecycle2Dto(AssetLifecycle assetLifecycle){
        return AssetLifecycleDTO.builder()
                .houseName(assetLifecycle.getHouseName())
                .operateUser(assetLifecycle.getOperateUser())
                .productImg(assetLifecycle.getProductImg())
                .productCode(assetLifecycle.getProductCode())
                .productNum(assetLifecycle.getProductNum())
                .productSpecification(assetLifecycle.getProductSpecification())
                .productName(assetLifecycle.getProductName())
                .warehouseAssetBizType(assetLifecycle.getWarehouseAssetBizType())
                .batchNo(assetLifecycle.getBatchNo())
                .inOutBizType(assetLifecycle.getInOutBizType())
                .inOutType(assetLifecycle.getInOutType())
                .price(assetLifecycle.getPrice())
                .tax(assetLifecycle.getTax())
                .taxRate(assetLifecycle.getTaxRate())
                .amount(assetLifecycle.getAmount())
                .isOrderProduct(assetLifecycle.getIsOrderProduct())
                .orderNo(assetLifecycle.getOrderNo())
                .build();
    }


}
