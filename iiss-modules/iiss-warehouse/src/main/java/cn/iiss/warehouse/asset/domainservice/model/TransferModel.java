package cn.iiss.warehouse.asset.domainservice.model;

import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.warehouse.assetrecord.AssetRecordDTO;
import lombok.Builder;
import lombok.Getter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Getter
@Builder
public class TransferModel implements Serializable {
    private Long houseId;
    private String warehouseName;
    private Long translationHouseId;
    private String translationWarehouseName;

    @FieldDesc(name = "批次总金额")
    private BigDecimal amount;
    @FieldDesc(name = "创建人ID")
    private Long createUserId;
    @FieldDesc(name = "创建人")
    private String createUserName;

    private List<AssetRecordDTO> assetRecordDTOList;

}
