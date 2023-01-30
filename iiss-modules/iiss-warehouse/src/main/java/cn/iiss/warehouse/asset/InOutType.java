package cn.iiss.warehouse.asset;

import cn.iiss.commons.constants.BaseEnum;

import java.util.Optional;

public enum InOutType implements BaseEnum<InOutType> {
    IN(1, "入库"),
    OUT(2, "出库");
    private final Integer code;
    private final String name;

    InOutType(Integer code, String name) {
        this.code = code;

        this.name = name;
    }

    public static Optional<InOutType> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(InOutType.class, code));
    }

    @Override
    public Integer getCode() {
        return this.code;
    }

    @Override
    public String getName() {
        return this.name;
    }
}
