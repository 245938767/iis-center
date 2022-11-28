package cn.iiss.warehouse.asset.request;

import cn.iiss.common.model.Request;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class AssetTranslationRequest implements Request {
    @ApiModelProperty(value = "仓库唯一ID", required = true)
    @NotNull(message = "请输入仓库号")
    private Long houseId;
    @ApiModelProperty(value = "请输入转仓，仓库号")
    @NotNull(message = "请选择转仓，仓库号")
    private Long translationHouseId;
    @ApiModelProperty(value = "商品信息列表", required = true)
    @NotEmpty(message = "请选择商品信息")
    private List<AssetProductRequest> assetProductRequestList;
}
