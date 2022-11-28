package cn.iiss.warehouse.warehouseasset;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.common.constants.ValidStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 仓库资产信息
 */
@Data
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
    private Long houseId;
    @FieldDesc(name = "仓库名称")
    private String houseName;

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
        this.houseId = warehouseAssetDTO.getHouseId();
        this.houseName = warehouseAssetDTO.getHouseName();
        this.validStatus = ValidStatus.VALID;
    }

}
