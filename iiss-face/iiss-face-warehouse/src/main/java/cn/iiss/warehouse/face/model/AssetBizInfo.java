package cn.iiss.warehouse.face.model;

import cn.iiss.commons.annotation.FieldDesc;
import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;

/**
 * 此数据已经是通过筛选后的数据
 * 资产业务信息
 */
@Builder
@Getter
public class AssetBizInfo {
    @FieldDesc(name = "仓库唯一ID")
    private Long warehouseId;
    @FieldDesc(name = "仓库名称")
    private String warehouseName;

    @FieldDesc(name = "批次总金额")
    private BigDecimal amount;
    @FieldDesc(name = "批次号")
    private String batchNo;
    @FieldDesc(name = "出入库业务类型")
    private InOutBizType inOutBizType;
    @FieldDesc(name = "创建人ID")
    private Long createUserId;
    @FieldDesc(name = "创建人")
    private String createUserName;
    private InOutType inOutType;
}
