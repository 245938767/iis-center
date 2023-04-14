package cn.iiss.warehouse.face.request;

import cn.iiss.warehouse.face.model.InOutBizType;
import cn.iiss.warehouse.face.model.InOutType;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AssetQueryRequest implements Serializable {
    @ApiModelProperty("仓库号")
    private Long warehouseId;
    @ApiModelProperty("出入库类型")
    private InOutType inOutType;
    @ApiModelProperty("出入库业务类型")
    private InOutBizType inOutBizType;

    private int warehouseRecordStatus;


}
