package cn.iiss.warehouse.face.factory;

import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.warehouse.face.WarehouseService;
import cn.iiss.warehouse.face.request.AssetCreateRequest;
import cn.iiss.warehouse.face.request.AssetQueryRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import cn.iiss.warehouse.face.response.AssetResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class WarehouseFallbackFactory implements FallbackFactory<WarehouseService> {
    private static final Logger log = LoggerFactory.getLogger(WarehouseFallbackFactory.class);

    @Override
    public WarehouseService create(Throwable cause) {

        log.error("交易服务调用失败:{}", cause.getMessage());
        return new WarehouseService() {
            @Override
            public AjaxResult assetCreateIn(AssetCreateRequest assetCreateRequest) {
                return AjaxResult.error();
            }

            @Override
            public AjaxResult assetCreateOut(AssetCreateRequest assetCreateRequest) {
                return AjaxResult.error();
            }

            @Override
            public JsonObject<Long> assetTranslation(AssetTranslationRequest assetTranslationRequest) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<AssetResponse> assetGetByAssetId(Long assetId) {
                return JsonObject.fail(CodeEnum.Fail);
            }


            @Override
            public JsonObject<List<AssetResponse>> assetGetByBatchNo(String batchNo) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public TableDataInfo assetGetPageList(AssetQueryRequest assetQueryRequest) {
                return null;
            }

            @Override
            public R<String> warehouseGetById(Long id) {
                return R.fail();
            }
        };
    }
}
