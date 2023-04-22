package cn.iiss.trade.orderlifecycle;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.annotation.TypeConverter;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.mybatis.support.BaseMybatisAggregate;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@TableName(value = "order_lifecycle", autoResultMap = true)
@Data
public class OrderLifecycle extends BaseMybatisAggregate {

    private Long flowNo;

    @FieldDesc(name = "操作类型")
    @TypeConverter(toTypeFullName = "java.lang.Integer")
    @TableField(typeHandler = OrderOperateTypeConverter.class)
    private OrderOperateType operateType;

    private String remark;

    private String operateUser;

    @TableField(typeHandler = ValidStatusConverter.class)
    private ValidStatus validStatus;

    public void init() {
        prePersist();
        setValidStatus(ValidStatus.VALID);
    }

    public void valid() {
        preUpdate();
        setValidStatus(ValidStatus.VALID);
    }

    public void invalid() {
        setValidStatus(ValidStatus.INVALID);
        preUpdate();
    }

}
