package cn.iiss.warehouse.assetrecord;

import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.common.constants.ValidStatus;

import lombok.Builder;
import lombok.Getter;

import java.io.Serializable;
import java.math.BigDecimal;

@Getter
@Builder
public class AssetRecordDTO implements Serializable {
    @FieldDesc(name = "操作人")
    private String operateUser;

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

    public AssetRecord transAssetRecord(String batchNo,Long assetId,Long houseId,String houseName, InOutType inOutType){
        return AssetRecord.builder()
                .inOutType(inOutType)
                .assetId(assetId)
                .amount(amount)
                .productNum(productNum)
                .isOrderProduct(isOrderProduct)
                .orderNo(orderNo)
                .price(price)
                .tax(tax)
                .taxRate(taxRate)
                .batchNo(batchNo)
                .validStatus(ValidStatus.INVALID)

                .houseId(houseId)
                .houseName(houseName)
                .operateUser(operateUser)
                .productId(productId)
                .productImg(productImg)
                .productCode(productCode)
                .productName(productName)
                .warehouseAssetBizType(warehouseAssetBizType)
                .productSpecification(productSpecification)

                .build();
    }
}
