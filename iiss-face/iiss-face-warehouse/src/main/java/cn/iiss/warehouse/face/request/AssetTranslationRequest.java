package cn.iiss.warehouse.face.request;

import cn.iiss.commons.model.Request;
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
@AllArgsConstructor
@NoArgsConstructor
public class AssetTranslationRequest implements Request {
    @ApiModelProperty(value = "仓库唯一ID", required = true)
    @NotNull(message = "请输入仓库号")
    private Long warehouseId;
    @ApiModelProperty(value = "请输入转仓，仓库号")
    @NotNull(message = "请选择转仓，仓库号")
    private Long translationWarehouseId;
    @ApiModelProperty(value = "批次号")
    private String batchNo;
    @ApiModelProperty(value = "商品信息列表", required = true)
    @NotEmpty(message = "请选择商品信息")
    private List<AssetProductRequest> assetProductRequestList;
}
