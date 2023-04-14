package cn.iiss.trade.reviserecord.dto;

import cn.iiss.commons.annotation.FieldDesc;
import lombok.Data;

@Data
public class ReviseRecordQuery {


    @FieldDesc(name = "唯一流水")
    private Long flowNo;

    @FieldDesc(name = "表名")
    private String tableName;

}
