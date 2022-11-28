package cn.iiss.warehouse.asset;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.common.annotation.FieldDesc;
import cn.iiss.warehouse.asset.domainservice.model.AssetBizInfo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 出入库记录表单
 */
@Data
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
}
