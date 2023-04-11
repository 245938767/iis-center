package cn.iiss.warehouse.warehouse;

import cn.iiss.common.core.utils.bean.BeanUtils;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.handlers.FastjsonTypeHandler;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;


/**
 * 仓库
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Accessors(chain = true)
@TableName(autoResultMap = true)
public class Warehouse implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Long id;

    @FieldDesc(name = "仓库名")
    private String warehouseName;
    @FieldDesc(name = "父id")
    private Long parentId;
    @FieldDesc(name = "仓库地址")
    private String warehouseAddress;
    @FieldDesc(name = "是否有数据")
    private ValidStatus isDataInfo;

    @FieldDesc(name = "删除标志")
    private ValidStatus validStatus;
    @FieldDesc(name = "代码")
    private String code;
    @FieldDesc(name = "仓库管理员id")
    private Long warehouseAdminId;
    @FieldDesc(name = "名称")
    private String warehouseAdminUser;
    private String phone;
    @FieldDesc(name = "仓库级别")
    private Integer wareHouseLevel;
    @FieldDesc(name="定位")
    @TableField(typeHandler = FastjsonTypeHandler.class)
    private List<BigDecimal> lang;


    /**
     * 更新为无数据
     */
    public void updateIsDataInfoValid() {
        this.isDataInfo = ValidStatus.VALID;
    }

    public WarehouseDTO warehouse2DTO() {
        WarehouseDTO build = WarehouseDTO.builder().build();
        BeanUtils.copyBeanProp(build, this);
        return build;
    }

}
