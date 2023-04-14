package cn.iiss.trade.face.factory;

import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.trade.face.TradeService;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.trade.face.request.OrderBaseQueryRequest;
import cn.iiss.trade.face.request.OrderBaseUpdateRequest;
import cn.iiss.trade.face.response.OrderBaseResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

@Component
public class TradeFallbackFactory implements FallbackFactory<TradeService> {
    private static final Logger log = LoggerFactory.getLogger(TradeFallbackFactory.class);
    @Override
    public TradeService create(Throwable cause) {

        log.error("交易服务调用失败:{}", cause.getMessage());
        return new TradeService() {
            @Override
            public JsonObject<Long> createOrderBase(OrderBaseCreateRequest request) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<String> updateOrderBase(OrderBaseUpdateRequest request) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<String> validOrderBase(Long id) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<String> invalidOrderBase(Long id) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<OrderBaseResponse> findById(Long id) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject<TableDataInfo> findByPage(OrderBaseQueryRequest request) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject orderComplete(Long id) {
                return JsonObject.fail(CodeEnum.Fail);
            }

            @Override
            public JsonObject orderCancle(Long id) {
                return JsonObject.fail(CodeEnum.Fail);
            }
        };
    }
}
