package cn.iiss.warehouse.warehouse.request;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.warehouse.Warehouse;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class WarehouseCreateRequest {

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
    private String phone;

    public Warehouse translationWarehouse(Integer warehouseLevel){
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
                .build();
    }

}
