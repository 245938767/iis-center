package cn.iiss.warehouse.assetlifecycle;


import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.assetrecord.WarehouseAssetBizType;
import cn.iiss.common.annotation.FieldDesc;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

@Builder
@Data
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

}
