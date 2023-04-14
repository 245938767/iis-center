package cn.iiss.warehouse.asset.domainservice.model;

import cn.iiss.warehouse.assetrecord.AssetRecordDTO;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.warehouse.face.model.InOutBizType;
import cn.iiss.warehouse.face.model.InOutType;
import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Builder
public class BatchInOutModel {
    @FieldDesc(name = "仓库唯一ID")
    private Long warehouseId;
    @FieldDesc(name = "仓库名称")
    private String warehouseName;
    @FieldDesc(name = "批次总金额")
    private BigDecimal amount;
    @FieldDesc(name = "出入库业务类型")
    private InOutBizType inOutBizType;
    @FieldDesc(name = "出入库类型")
    private InOutType inOutType;
    @FieldDesc(name = "创建人ID")
    private Long createUserId;
    @FieldDesc(name = "创建人")
    private String createUserName;

    @FieldDesc(name = "批次号")
    private String batchNo;
    private List<AssetRecordDTO> assetRecordDTOList;
}
