package cn.iiss.logistics;

import cn.iiss.commons.constants.BaseEnum;

import java.util.Optional;

public enum LogisticsStatus implements BaseEnum<LogisticsStatus> {
    DELIVERY(1, "准备发货"),
    TRANSIT(2, "运输中"),
    COMPLETION(3, "运输完成"),
    ;
    private final Integer code;
    private final String name;

    LogisticsStatus(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    @Override
    public Integer getCode() {
        return code;
    }

    @Override
    public String getName() {
        return name;
    }

    public static Optional<LogisticsStatus> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(LogisticsStatus.class, code));
    }
}
