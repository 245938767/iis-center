package cn.iiss.warehouse.asset.request;

import cn.iiss.warehouse.asset.Asset;
import cn.iiss.warehouse.asset.InOutBizType;
import cn.iiss.warehouse.asset.InOutType;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AssetQueryRequest implements Serializable {
    @ApiModelProperty("仓库号")
    private Long houseId;
    @ApiModelProperty("出入库类型")
    private InOutType inOutType;
    @ApiModelProperty("出入库业务类型")
    private InOutBizType inOutBizType;

    private int warehouseRecordStatus;


    public LambdaQueryWrapper<Asset> getQueryWrapper() {

        LambdaQueryWrapper<Asset> assetLambdaQueryWrapper = new LambdaQueryWrapper<>();
        switch (warehouseRecordStatus) {

            case 2:
                assetLambdaQueryWrapper.eq(Asset::getInOutType, InOutType.OUT);
                break;
            case 3:
                assetLambdaQueryWrapper.eq(Asset::getInOutBizType, InOutBizType.WAREHOUSE_ADJUST_IN).or().eq(Asset::getInOutBizType, InOutBizType.WAREHOUSE_ADJUST_OUT);
                break;
            default:
                //入库
                assetLambdaQueryWrapper.eq(Asset::getInOutType, InOutType.IN);
        }
        if (houseId != null) {
            assetLambdaQueryWrapper.eq(Asset::getHouseId, houseId);
        }
        if (inOutBizType != null) {
            assetLambdaQueryWrapper.eq(Asset::getInOutBizType, inOutType);
        }
        if (inOutType != null) {
            assetLambdaQueryWrapper.eq(Asset::getInOutType, inOutType);
        }
        return assetLambdaQueryWrapper;
    }
}
