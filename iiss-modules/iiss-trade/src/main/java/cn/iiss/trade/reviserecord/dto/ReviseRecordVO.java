package cn.iiss.trade.reviserecord.dto;

import cn.iiss.common.core.utils.bean.BeanUtils;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.mybatis.converter.ValidStatusConverter;
import cn.iiss.trade.reviserecord.ReviseRecord;
import cn.iiss.trade.reviserecord.mapper.ReviseRecordMapper;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class ReviseRecordVO {

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

    private ValidStatus validStatus;
    public ReviseRecordVO(ReviseRecord reviseRecord) {
        BeanUtils.copyBeanProp(this,reviseRecord);
    }
}
