package cn.iiss.warehouse.warehouseasset;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 仓库资产信息
 */
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class WarehouseAsset implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableId(type = IdType.AUTO)
    private Long id;
    @FieldDesc(name = "状态")
    private ValidStatus validStatus;

    @FieldDesc(name = "仓库ID(唯一)")
    private Long warehouseId;
    @FieldDesc(name = "仓库名称")
    private String warehouseName;

    @FieldDesc(name = "商品唯一ID(唯一)")
    private Long productId;
    @FieldDesc(name = "商品图片")
    private String productImg;
    @FieldDesc(name = "商品代码")
    private String productCode;
    @FieldDesc(name = "商品名称")
    private String productName;

    @FieldDesc(name = "商品规格")
    private String productSpecification;

    private Long productNum;

    public void updateIn(WarehouseAssetDTO warehouseAssetDTO) {
        //数量计算
        this.productNum = this.productNum + warehouseAssetDTO.getProductNum();
    }

    public void updateOut(WarehouseAssetDTO warehouseAssetDTO) {
        this.productNum = this.productNum - warehouseAssetDTO.getProductNum();
    }

    public void dto2WarehouseAsset(WarehouseAssetDTO warehouseAssetDTO) {
        this.productNum = warehouseAssetDTO.getProductNum();

        this.productSpecification = warehouseAssetDTO.getProductSpecification();
        this.productId = warehouseAssetDTO.getProductId();
        this.productName = warehouseAssetDTO.getProductName();
        this.productNum = warehouseAssetDTO.getProductNum();
        this.productCode = warehouseAssetDTO.getProductCode();
        this.warehouseId = warehouseAssetDTO.getHouseId();
        this.warehouseName = warehouseAssetDTO.getHouseName();
        this.validStatus = ValidStatus.VALID;
    }

    public Long getId() {
        return id;
    }

    public ValidStatus getValidStatus() {
        return validStatus;
    }

    public Long getWarehouseId() {
        return warehouseId;
    }

    public String getWarehouseName() {
        return warehouseName;
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

    public String getProductSpecification() {
        return productSpecification;
    }

    public Long getProductNum() {
        return productNum;
    }

    public WarehouseAsset setId(Long id) {
        this.id = id;
        return this;
    }

    public WarehouseAsset setValidStatus(ValidStatus validStatus) {
        this.validStatus = validStatus;
        return this;
    }

    public WarehouseAsset setWarehouseId(Long warehouseId) {
        this.warehouseId = warehouseId;
        return this;
    }

    public WarehouseAsset setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
        return this;
    }

    public WarehouseAsset setProductId(Long productId) {
        this.productId = productId;
        return this;
    }

    public WarehouseAsset setProductImg(String productImg) {
        this.productImg = productImg;
        return this;
    }

    public WarehouseAsset setProductCode(String productCode) {
        this.productCode = productCode;
        return this;
    }

    public WarehouseAsset setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public WarehouseAsset setProductSpecification(String productSpecification) {
        this.productSpecification = productSpecification;
        return this;
    }

    public WarehouseAsset setProductNum(Long productNum) {
        this.productNum = productNum;
        return this;
    }
}
