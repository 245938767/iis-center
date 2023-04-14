package cn.iiss.trade.reviserecord.dto;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.trade.reviserecord.ReviseRecord;
import lombok.Data;

@Data
public class ReviseRecordUpdater {

    private Long id;
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

    public ReviseRecord updateReviseRecord(ReviseRecord e) {
        e.setReviseReason(reviseReason);
        e.setDiff(diff);
        e.setReviseAfter(reviseAfter);
        e.setOperateUser(operateUser);
        return e;
    }

    public Long getId() {
        return id;
    }

    public ReviseRecordUpdater setId(Long id) {
        this.id = id;
        return this;
    }

    public String getOperateUser() {
        return operateUser;
    }

    public ReviseRecordUpdater setOperateUser(String operateUser) {
        this.operateUser = operateUser;
        return this;
    }

    public Long getFlowNo() {
        return flowNo;
    }

    public ReviseRecordUpdater setFlowNo(Long flowNo) {
        this.flowNo = flowNo;
        return this;
    }

    public String getReviseBefore() {
        return reviseBefore;
    }

    public ReviseRecordUpdater setReviseBefore(String reviseBefore) {
        this.reviseBefore = reviseBefore;
        return this;
    }

    public String getReviseAfter() {
        return reviseAfter;
    }

    public ReviseRecordUpdater setReviseAfter(String reviseAfter) {
        this.reviseAfter = reviseAfter;
        return this;
    }

    public String getDiff() {
        return diff;
    }

    public ReviseRecordUpdater setDiff(String diff) {
        this.diff = diff;
        return this;
    }

    public String getTableName() {
        return tableName;
    }

    public ReviseRecordUpdater setTableName(String tableName) {
        this.tableName = tableName;
        return this;
    }

    public String getReviseReason() {
        return reviseReason;
    }

    public ReviseRecordUpdater setReviseReason(String reviseReason) {
        this.reviseReason = reviseReason;
        return this;
    }

    public ValidStatus getValidStatus() {
        return validStatus;
    }

    public ReviseRecordUpdater setValidStatus(ValidStatus validStatus) {
        this.validStatus = validStatus;
        return this;
    }
}
