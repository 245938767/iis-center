package cn.iiss.warehouse.warehouseasset;

import cn.iiss.commonss.annotation.FieldDesc;
import lombok.Builder;
import lombok.Getter;

import java.io.Serial;
import java.io.Serializable;

@Getter
@Builder
public class WarehouseAssetDTO implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    @FieldDesc(name = "仓库ID(唯一)")
    private Long houseId;
    @FieldDesc(name = "仓库名称")
    private String houseName;

    @FieldDesc(name = "商品唯一ID(唯一)")
    private Long productId;
    @FieldDesc(name = "商品图片")
    private String productImg;
    @FieldDesc(name = "商品代码")
    private String productCode;
    @FieldDesc(name = "商品名称")
    private String productName;
    @FieldDesc(name = "商品规格")
    private String productSpecification;

    @FieldDesc(name = "数量")
    private Long productNum;

}
