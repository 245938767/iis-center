package cn.iiss.trade.orderlifecycle.dto;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.annotation.TypeConverter;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.trade.orderlifecycle.OrderLifecycle;
import cn.iiss.trade.orderlifecycle.OrderOperateType;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class OrderLifecycleUpdater {
    private Long id;

    private Long flowNo;

    @FieldDesc(name = "操作类型")
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    private OrderOperateType operateType;

    private String remark;

    private String operateUser;

    @TableField(typeHandler = ValidStatusConverter.class)
    private ValidStatus validStatus;

    public void updateOrderLifecycle(OrderLifecycle e) {
    }

    public Long getId() {
        return id;
    }

    public OrderLifecycleUpdater setId(Long id) {
        this.id = id;
        return this;
    }

    public Long getFlowNo() {
        return flowNo;
    }

    public OrderLifecycleUpdater setFlowNo(Long flowNo) {
        this.flowNo = flowNo;
        return this;
    }

    public OrderOperateType getOperateType() {
        return operateType;
    }

    public OrderLifecycleUpdater setOperateType(OrderOperateType operateType) {
        this.operateType = operateType;
        return this;
    }

    public String getRemark() {
        return remark;
    }

    public OrderLifecycleUpdater setRemark(String remark) {
        this.remark = remark;
        return this;
    }

    public String getOperateUser() {
        return operateUser;
    }

    public OrderLifecycleUpdater setOperateUser(String operateUser) {
        this.operateUser = operateUser;
        return this;
    }

    public ValidStatus getValidStatus() {
        return validStatus;
    }

    public OrderLifecycleUpdater setValidStatus(ValidStatus validStatus) {
        this.validStatus = validStatus;
        return this;
    }
}
