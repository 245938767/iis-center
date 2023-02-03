package cn.iiss.warehouse.warehouse;

import cn.iiss.commonss.constants.BaseEnum;

import java.util.Optional;

public enum WarehouseErrorCode implements BaseEnum<WarehouseErrorCode> {
    WAREHOUSE_CREATE_PARENT_IS_EXIT(10010101, "父类存在数据创建失败"),
    WAREHOUSE_DELETE_IS_EXIT(10010102, "存在数据删除失败"),
    WAREHOUSE_ERROR_HAVE_CINDER_ID(10010103,"存在子仓库数据"),
    ;
    private final Integer code;
    private final String name;

    WarehouseErrorCode(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    @Override
    public Integer getCode() {
        return this.code;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public static Optional<WarehouseErrorCode> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(WarehouseErrorCode.class, code));
    }
}
