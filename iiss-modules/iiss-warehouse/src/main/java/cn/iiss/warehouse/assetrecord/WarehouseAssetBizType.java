package cn.iiss.warehouse.assetrecord;

import cn.iiss.common.constants.BaseEnum;

import java.util.Optional;

public enum WarehouseAssetBizType implements BaseEnum<WarehouseAssetBizType> {

    /**
     * 易耗品
     */
    CONSUMABLE(1, "易耗品"),
    /**
     * 主料
     */
    MAIN_INGREDiENT(2, "主料"),
    /**
     * 产成品
     */
    PRODUCT(3, "产成品"),

    /**
     * 维修配件
     */
    REPAIR_PARTS(4, "维修配件"),
    /**
     * 销售商品
     */
    PRODUCT_SALES(5, "销售商品"),
    /**
     * 辅料
     */
    INGREDIENTS(6, "辅料");
    private final Integer code;
    private final String name;

    WarehouseAssetBizType(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public static Optional<WarehouseAssetBizType> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(WarehouseAssetBizType.class, code));
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
