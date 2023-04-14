package cn.iiss.trade.face.factory;

import cn.iiss.trade.face.TradeService;
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
        };
    }
}
