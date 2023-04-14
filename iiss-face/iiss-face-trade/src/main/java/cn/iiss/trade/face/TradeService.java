package cn.iiss.trade.face;

import cn.iiss.common.core.constant.ServiceNameConstants;
import cn.iiss.trade.face.factory.TradeFallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(contextId = "tradeService", value = ServiceNameConstants.TRADE_SERVICE, fallbackFactory = TradeFallbackFactory.class)
public interface TradeService {


}
