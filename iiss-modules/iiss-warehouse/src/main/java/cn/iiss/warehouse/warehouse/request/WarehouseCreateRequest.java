package cn.iiss.warehouse.warehouse.request;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.warehouse.Warehouse;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class WarehouseCreateRequest {

    private Long id;
    @FieldDesc(name = "仓库名")
    @NotBlank(message = "请输入仓库名称")
    private String warehouseName;
    @FieldDesc(name = "父id")
    private Long parentId;
    @FieldDesc(name = "仓库地址")
    private String warehouseAddress;
    @FieldDesc(name = "代码")
    private String code;
    @FieldDesc(name = "仓库管理员id")
    private Long warehouseAdminId;
    @FieldDesc(name = "定位")
    private List<Integer> lang;
    private String phone;

    public Warehouse translationWarehouse(Integer warehouseLevel) {
        return Warehouse.builder()
                .warehouseName(warehouseName)
                .parentId(parentId)
                .warehouseAddress(warehouseAddress)
                .code(code)
                .warehouseAdminId(warehouseAdminId)
                .phone(phone)
                .isDataInfo(ValidStatus.VALID)
                .validStatus(ValidStatus.VALID)
                .wareHouseLevel(warehouseLevel)
                .lang(lang)
                .build();
    }

}
