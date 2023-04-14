package cn.iiss.trade.reviserecord;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.mybatis.support.BaseMybatisAggregate;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;


@EqualsAndHashCode(callSuper = true)
@TableName(value = "revise_record", autoResultMap = true)
@Data
public class ReviseRecord extends BaseMybatisAggregate {

    @FieldDesc(name = "操作人")
    private String operateUser;

    @FieldDesc(name = "唯一流水")
    private Long flowNo;

    @FieldDesc(name = "修订前")
    private String reviseBefore;

    @FieldDesc(name = "修订后")
    private String reviseAfter;

    @FieldDesc(name = "差别")
    private String diff;

    @FieldDesc(name = "表名")
    private String tableName;

    @FieldDesc(name = "修订原因")
    private String reviseReason;

    @TableField(typeHandler = ValidStatusConverter.class)
    private ValidStatus validStatus;

    public void init() {
        setValidStatus(ValidStatus.VALID);
    }

    public void valid() {
        setValidStatus(ValidStatus.VALID);
    }

    public void invalid() {
        setValidStatus(ValidStatus.INVALID);
    }

}
