package cn.iiss.warehouse.asset;



import cn.iiss.commonss.constants.BaseEnum;

import java.util.Optional;

public enum AssetErrorCode implements BaseEnum<AssetErrorCode> {

    ASSET_HAS_IN(10010026, "已经入库"),
    ASSET_HAS_OUT(10010027, "已经出库"),
    ASSET_CODE_NOT_EXIST(10010028, "编码不存在"),
    UN_REVIEW_EXIST(10010029, "请先审核"),
    ASSET_WAREHOUSE_IS_NO_DATA(10010030,"此仓库不能录入数据"),
    ;

    AssetErrorCode(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    private final Integer code;
    private final String name;

    @Override
    public Integer getCode() {
        return this.code;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public static Optional<AssetErrorCode> of(Integer code) {
        return Optional.ofNullable(BaseEnum.parseByCode(AssetErrorCode.class, code));
    }

}