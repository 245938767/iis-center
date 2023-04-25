package cn.iiss.trade.face;

import cn.iiss.common.core.constant.ServiceNameConstants;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.trade.face.factory.TradeFallbackFactory;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.trade.face.request.OrderBaseQueryRequest;
import cn.iiss.trade.face.request.OrderBaseUpdateRequest;
import cn.iiss.trade.face.response.OrderBaseResponse;
import io.swagger.annotations.ApiOperation;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(contextId = "tradeService", value = ServiceNameConstants.TRADE_SERVICE, fallbackFactory = TradeFallbackFactory.class)
public interface TradeService {

    @PostMapping("/orderBase/v1/createOrderBase")
    @ApiOperation(value = "创建订单", nickname = "createorder")
    public JsonObject<Long> createOrderBase(@RequestBody OrderBaseCreateRequest request);

    /**
     * update request
     */
    @PostMapping("/orderBase/v1/updateOrderBase")
    @ApiOperation(value = "更新订单", nickname = "updateOrder")
    public JsonObject<String> updateOrderBase(@RequestBody OrderBaseUpdateRequest request);

    /**
     * valid
     */
    @PostMapping("/orderBase/v1/valid/{id}")
    @ApiOperation(value = "校验订单", nickname = "validOrder")
    public JsonObject<String> validOrderBase(@PathVariable("id") Long id);

    /**
     * invalid
     */
    @PostMapping("/orderBase/v1/invalid/{id}")
    @ApiOperation(value = "取消订单", nickname = "invalidOrder")
    public JsonObject<String> invalidOrderBase(@PathVariable("id") Long id);

    /**
     * findById
     */
    @ApiOperation(value = "查询订单", nickname = "findByIdOrder")
    @GetMapping("/orderBase/v1/findById/{id}")
    public JsonObject<OrderBaseResponse> findById(@PathVariable("id") Long id);

    /**
     * findByPage request
     */
    @PostMapping("/orderBase/v1/findByPage")
    @ApiOperation(value = "分页查询订单", nickname = "findByPageOrder")
    public JsonObject<TableDataInfo> findByPage(
            @RequestBody OrderBaseQueryRequest request);

    /**
     * orderComplete
     */
    @ApiOperation(value = "订单完成", nickname = "orderComplete")
    @GetMapping("/orderBase/v1/orderComplete/{id}")
    public JsonObject orderComplete(@PathVariable("id") Long id);

    /**
     * orderComplete
     */
    @ApiOperation(value = "订单取消", nickname = "orderCancle")
    @GetMapping("/orderBase/v1/orderCancle/{id}")
    public JsonObject orderCancle(@PathVariable("id") Long id);

}
