package cn.iiss.warehouse.face.model;

import cn.iiss.common.core.utils.DateUtils;
import cn.iiss.commons.annotation.FieldDesc;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 出入库记录表单
 */
@EqualsAndHashCode(callSuper = false)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Asset implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;

    @FieldDesc(name = "仓库唯一ID")
    private Long warehouseId;
    @FieldDesc(name = "仓库名称")
    private String warehouseName;
    @FieldDesc(name = "创建人ID")
    private Long createUserId;
    @FieldDesc(name = "创建人")
    private String createUserName;

    @FieldDesc(name = "批次总金额")
    private BigDecimal amount;
    @FieldDesc(name = "批次号")
    private String batchNo;
    @FieldDesc(name = "出入库业务类型")
    private InOutBizType inOutBizType;
    @FieldDesc(name = "出入库类型")
    private InOutType inOutType;

    private Date createTime;
    private Date updateTime;


    public void in(AssetBizInfo assetBizInfo) {
        this.inOutType = InOutType.IN;
        create(assetBizInfo);
    }

    public void out(AssetBizInfo assetBizInfo) {
        this.inOutType = InOutType.OUT;
        create(assetBizInfo);
    }

    public void updateAmount(BigDecimal amount) {
        this.amount = amount;
    }


    private void create(AssetBizInfo assetBizInfo) {
        this.amount = assetBizInfo.getAmount();
        this.batchNo = assetBizInfo.getBatchNo();
        this.inOutBizType = assetBizInfo.getInOutBizType();
        //仓库数据
        this.warehouseId = assetBizInfo.getWarehouseId();
        this.warehouseName = assetBizInfo.getWarehouseName();
        //用户数据
        this.createUserName = assetBizInfo.getCreateUserName();
        this.createUserId = assetBizInfo.getCreateUserId();
        //time
        this.createTime= DateUtils.getNowDate();
        this.updateTime=DateUtils.getNowDate();

    }

    public Long getId() {
        return id;
    }

    public Long getWarehouseId() {
        return warehouseId;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public Long getCreateUserId() {
        return createUserId;
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public String getBatchNo() {
        return batchNo;
    }

    public InOutBizType getInOutBizType() {
        return inOutBizType;
    }

    public InOutType getInOutType() {
        return inOutType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    private Asset setId(Long id) {
        this.id = id;
        return this;
    }

    private Asset setWarehouseId(Long warehouseId) {
        this.warehouseId = warehouseId;
        return this;
    }

    private Asset setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
        return this;
    }

    private Asset setCreateUserId(Long createUserId) {
        this.createUserId = createUserId;
        return this;
    }

    private Asset setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
        return this;
    }

    private Asset setAmount(BigDecimal amount) {
        this.amount = amount;
        return this;
    }

    private Asset setBatchNo(String batchNo) {
        this.batchNo = batchNo;
        return this;
    }

    private Asset setInOutBizType(InOutBizType inOutBizType) {
        this.inOutBizType = inOutBizType;
        return this;
    }

    private Asset setInOutType(InOutType inOutType) {
        this.inOutType = inOutType;
        return this;
    }

    private Asset setCreateTime(Date createTime) {
        this.createTime = createTime;
        return this;
    }

    private Asset setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
        return this;
    }
}
