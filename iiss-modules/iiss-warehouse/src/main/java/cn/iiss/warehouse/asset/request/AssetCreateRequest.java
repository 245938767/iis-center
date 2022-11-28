package cn.iiss.warehouse.asset.request;

import cn.iiss.common.model.Request;
import cn.iiss.warehouse.asset.InOutBizType;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AssetCreateRequest implements Request {
    @ApiModelProperty(value = "仓库唯一ID",required = true)
    @NotNull(message = "请输入仓库号")
    private Long houseId;
    @ApiModelProperty(value = "出入库业务类型",required = true)
    @NotNull(message = "请选择出入库业务类型")
    private InOutBizType inOutBizType;
    @ApiModelProperty(value = "商品信息列表",required = true)
    @NotEmpty(message = "请选择商品信息")
    private List<AssetProductRequest> assetProductRequestList;
}
