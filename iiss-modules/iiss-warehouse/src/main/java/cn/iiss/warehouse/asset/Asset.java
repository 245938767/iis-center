package cn.iiss.warehouse.asset;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.warehouse.asset.domainservice.model.AssetBizInfo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 出入库记录表单
 */
@EqualsAndHashCode(callSuper = false)
public class Asset implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableId(type = IdType.AUTO)
    private Long id;

    @FieldDesc(name = "仓库唯一ID")
    private Long houseId;
    @FieldDesc(name = "仓库名称")
    private String houseName;
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
        this.inOutType = assetBizInfo.getInOutType();
        create(assetBizInfo);
    }

    public void out(AssetBizInfo assetBizInfo) {
        this.inOutType = assetBizInfo.getInOutType();
        create(assetBizInfo);
    }
    public void updateAmount(BigDecimal amount){
        this.amount=amount;
    }


    private void create(AssetBizInfo assetBizInfo) {
        this.amount = assetBizInfo.getAmount();
        this.batchNo = assetBizInfo.getBatchNo();
        this.inOutBizType = assetBizInfo.getInOutBizType();
        //仓库数据
        this.houseId = assetBizInfo.getHouseId();
        this.houseName = assetBizInfo.getHouseName();
        //用户数据
        this.createUserName = assetBizInfo.getCreateUserName();
        this.createUserId = assetBizInfo.getCreateUserId();
    }

    public Long getId() {
        return id;
    }

    public Long getHouseId() {
        return houseId;
    }

    public String getHouseName() {
        return houseName;
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

    private Asset setHouseId(Long houseId) {
        this.houseId = houseId;
        return this;
    }

    private Asset setHouseName(String houseName) {
        this.houseName = houseName;
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
