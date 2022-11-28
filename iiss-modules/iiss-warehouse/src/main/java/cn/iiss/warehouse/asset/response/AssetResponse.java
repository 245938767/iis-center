package cn.iiss.warehouse.asset.response;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.InOutType;
import cn.iiss.warehouse.assetrecord.AssetRecord;
import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Builder
@Getter
@ToString
public class AssetResponse {

    @ApiModelProperty(value = "仓库唯一ID")
    private Long houseId;
    @ApiModelProperty(value = "仓库名称")
    private String houseName;

    @ApiModelProperty(value = "创建人ID")
    private Long createUserId;
    @ApiModelProperty(value = "创建人")
    private String createUserName;

    @ApiModelProperty(value = "批次总金额")
    private BigDecimal amount;
    @ApiModelProperty(value = "批次号")
    private String batchNo;
    @ApiModelProperty(value = "出入库业务类型")
    private InOutBizType inOutBizType;
    @ApiModelProperty("出入库业务类型名称")
    private String inOutBizTypeName;
    @ApiModelProperty(value = "出入库类型")
    private InOutType inOutType;

    @ApiModelProperty("出入库类型名称")
    private String inOutTypeName;

    private Date createTime;
    private Date updateTime;
    private List<AssetRecord> assetRecordList;

    public AssetResponse data2Response(Asset asset, List<AssetRecord> assetRecordList) {
        houseId = asset.getHouseId();
        houseName = asset.getHouseName();
        createUserId = asset.getCreateUserId();
        createUserName = asset.getCreateUserName();
        amount = asset.getAmount();
        batchNo = asset.getBatchNo();
        inOutBizType = asset.getInOutBizType();
        inOutBizTypeName = asset.getInOutBizType().getName();
        inOutType = asset.getInOutType();
        inOutTypeName = asset.getInOutType().getName();
        createTime = asset.getCreateTime();
        updateTime = asset.getUpdateTime();
        this.assetRecordList = assetRecordList;
        return this;
    }


}
