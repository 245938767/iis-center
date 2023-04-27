package cn.iiss.warehouse.face.response;

import cn.iiss.commons.model.Response;
import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.face.model.AssetRecord;
import cn.iiss.warehouse.face.model.InOutBizType;
import cn.iiss.warehouse.face.model.InOutType;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class AssetResponse implements Response {

    @ApiModelProperty("资产ID")
    private String assetId;
    @ApiModelProperty(value = "仓库唯一ID")
    private Long warehouseId;
    @ApiModelProperty(value = "仓库名称")
    private String warehouseName;

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
    private List<String> productImgs;

    public AssetResponse data2Response(Asset asset, List<AssetRecord> assetRecordList) {
        warehouseId = asset.getWarehouseId();
        warehouseName = asset.getWarehouseName();
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
        assetId = asset.getId().toString();
        this.assetRecordList = assetRecordList;
        if (assetRecordList != null && !assetRecordList.isEmpty()) {
            productImgs = new ArrayList<>(assetRecordList.size());
            assetRecordList.forEach(x -> this.productImgs.add(x.getProductImg()));
        }
        return this;
    }


}
