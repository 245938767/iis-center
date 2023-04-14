package cn.iiss.trade.orderlifecycle.dto;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.annotation.TypeConverter;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.trade.orderlifecycle.OrderOperateType;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class OrderLifecycleQuery {

    private Long flowNo;

    @FieldDesc(name = "操作类型")
    private Integer operateType;

    private String remark;

    private String operateUser;

}
