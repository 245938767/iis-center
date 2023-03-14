package cn.iiss.warehouse.warehouse;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import lombok.Builder;
import lombok.Data;

import java.io.Serial;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
public class WarehouseDTO implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    private Long id;
    @FieldDesc(name = "仓库名")
    private String warehouseName;
    @FieldDesc(name = "父id")
    private Long parentId;
    @FieldDesc(name = "仓库地址")
    private String warehouseAddress;

    @FieldDesc(name = "代码")
    private String code;
    @FieldDesc(name = "仓库管理员id")
    private Long warehouseAdminId;
    @FieldDesc(name = "名称")
    private String warehouseAdminUser;
    private String phone;
    @FieldDesc(name = "仓库级别")
    private Integer wareHouseLevel;
    @FieldDesc(name = "是否有数据")
    private ValidStatus isDataInfo;
    private ValidStatus validStatus;

    private List<WarehouseDTO> children;

    public void setList(WarehouseDTO warehouseDTO) {
        if (children == null) {
            children = new ArrayList<>();
        }
        children.add(warehouseDTO);
    }

    public Warehouse dto2WarehouseCreate(){
       return toWarehouse(ValidStatus.VALID,ValidStatus.VALID,null);
    }
    public Warehouse dto2WarehouseUpdate(Long id) {
       return toWarehouse(isDataInfo,validStatus,id);
    }
    private Warehouse toWarehouse(ValidStatus isDataInfo,ValidStatus validStatus,Long id){

        return Warehouse
                .builder()
                .id(id)
                .isDataInfo(isDataInfo)
                .warehouseAddress(warehouseAddress)
                .phone(phone)
                .code(code)
                .warehouseAdminUser(warehouseAdminUser)
                .warehouseAdminId(warehouseAdminId)
                .wareHouseLevel(wareHouseLevel)
                .validStatus(validStatus)
                .parentId(parentId)
                .build();
    }

}
