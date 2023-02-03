package cn.iiss.warehouse.asset;

import cn.iiss.commonss.constants.BaseEnum;

import java.util.Optional;

public enum InOutBizType implements BaseEnum<InOutBizType> {
    /**
     * 产品入库
     */
    PRODUCT_WAREHOUSE(6, "产品入库"),
    /**
     * 购买入库
     */
    PURCHASE_WAREHOUSE(5, "购买入库"),
    /**
     * 销售出库
     */
    WAREHOUSE_SALES(1, "销售出库"),
    /**
     * 生产领用
     */
    WAREHOUSE_REVIEW(2, "生产领用"),
    /**
     * 调仓
     */
    WAREHOUSE_ADJUST_POSiTION(3, "调仓"),

    WAREHOUSE_ADJUST_OUT(7, "调拨出库"),

    WAREHOUSE_ADJUST_IN(8, "调拨入库"),
    /**
     * 发外加工
     */
    WAREHOUSE_OUTSOURCING(4, "发外加工");


    InOutBizType(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    private final Integer code;
    private final String name;

    public static Optional<InOutBizType> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(InOutBizType.class, code));
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
