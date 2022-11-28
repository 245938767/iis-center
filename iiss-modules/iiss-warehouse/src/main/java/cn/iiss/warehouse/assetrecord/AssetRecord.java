package cn.iiss.warehouse.assetrecord;

import cn.iiss.warehouse.asset.InOutType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.common.constants.ValidStatus;
import lombok.Builder;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.math.BigDecimal;

@Data
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
}
