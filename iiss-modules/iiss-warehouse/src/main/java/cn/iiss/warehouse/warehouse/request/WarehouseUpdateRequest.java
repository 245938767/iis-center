package cn.iiss.warehouse.warehouse.request;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.warehouse.warehouse.Warehouse;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
public class WarehouseUpdateRequest {

    @NotNull(message = "请传入仓库ID")
    private Long id;
    @ApiModelProperty("仓库名")
    @NotBlank(message = "请输入仓库名称")
    private String warehouseName;
    @FieldDesc(name = "父id")
    private Long parentId;
    @ApiModelProperty("仓库地址")
    private String warehouseAddress;
    @ApiModelProperty("代码")
    private String code;
    @ApiModelProperty("仓库管理员id")
    private Long warehouseAdminId;
    private String phone;

    public Warehouse translationWarehouse(Integer warehouseLevel) {
        return Warehouse.builder()
                .id(id)
                .warehouseName(warehouseName)
                .warehouseAddress(warehouseAddress)
                .code(code)
                .warehouseAdminId(warehouseAdminId)
                .phone(phone)
                .wareHouseLevel(warehouseLevel)
                .parentId(parentId)
                .build();
    }
}
