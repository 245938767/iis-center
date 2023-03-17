package cn.iiss.warehouse.asset.domainservice.model;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.warehouse.assetrecord.AssetRecordUpdate;
import lombok.Builder;
import lombok.Getter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Getter
@Builder
public class AssetUpdateBizModel implements Serializable {

    @FieldDesc(name = "批次号")
    private String batchNo;
    @FieldDesc(name = "金额")
    private BigDecimal amount;
    @FieldDesc(name = "更新数据")
    private List<AssetRecordUpdate> assetRecordUpdateList;
}
