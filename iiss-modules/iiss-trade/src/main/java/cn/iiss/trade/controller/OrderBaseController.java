package cn.iiss.trade.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.trade.face.request.OrderBaseQueryRequest;
import cn.iiss.trade.face.request.OrderBaseUpdateRequest;
import cn.iiss.trade.face.response.OrderBaseResponse;
import cn.iiss.trade.order.dto.OrderBaseCreator;
import cn.iiss.trade.order.dto.OrderBaseUpdater;
import cn.iiss.trade.order.dto.OrderBaseVO;
import cn.iiss.trade.order.mapper.OrderBaseMapper;
import cn.iiss.trade.order.service.IOrderBaseService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@RestController
@Slf4j
@RequestMapping("orderBase/v1")
@RequiredArgsConstructor
public class OrderBaseController extends BaseController {
    private final IOrderBaseService orderBaseService;

    /**
     * createRequest
     */
    @PostMapping("createOrderBase")
    @ApiOperation(value = "创建订单", nickname = "createorder")
    public JsonObject<Long> createOrderBase(@RequestBody OrderBaseCreateRequest request) {
        OrderBaseCreator creator = OrderBaseMapper.INSTANCE.request2Dto(request);
        return JsonObject.success(orderBaseService.createOrderBase(creator));
    }

    /**
     * update request
     */
    @PostMapping("updateOrderBase")
    @ApiOperation(value = "更新订单", nickname = "updateOrder")
    public JsonObject<String> updateOrderBase(@RequestBody OrderBaseUpdateRequest request) {
        OrderBaseUpdater updater = OrderBaseMapper.INSTANCE.request2Updater(request);
        orderBaseService.updateOrderBase(updater);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * valid
     */
    @PostMapping("valid/{id}")
    @ApiOperation(value = "校验订单", nickname = "validOrder")
    public JsonObject<String> validOrderBase(@PathVariable Long id) {
        orderBaseService.validOrderBase(id);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * invalid
     */
    @PostMapping("invalid/{id}")
    @ApiOperation(value = "取消订单", nickname = "invalidOrder")
    public JsonObject<String> invalidOrderBase(@PathVariable Long id) {
        orderBaseService.invalidOrderBase(id);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * findById
     */
    @ApiOperation(value = "查询订单", nickname = "findByIdOrder")
    @GetMapping("findById/{id}")
    public JsonObject<OrderBaseResponse> findById(@PathVariable Long id) {
        OrderBaseVO vo = orderBaseService.findById(id);
        OrderBaseResponse response = OrderBaseMapper.INSTANCE.vo2Response(vo);
        return JsonObject.success(response);
    }

    /**
     * findByPage request
     */
    @PostMapping("findByPage")
    @ApiOperation(value = "分页查询订单", nickname = "findByPageOrder")
    public JsonObject<TableDataInfo> findByPage(
            @RequestBody OrderBaseQueryRequest request) {
        startPage();
        TableDataInfo byPage = orderBaseService.findByPage(OrderBaseMapper.INSTANCE.request2Query(request));
        return JsonObject.success(
                byPage
        );
    }

    /**
     * orderComplete
     */
    @ApiOperation(value = "订单完成", nickname = "orderComplete")
    @GetMapping("orderComplete/{id}")
    public JsonObject orderComplete(@PathVariable Long id) {
        boolean b = orderBaseService.completePay(id);
        if (b) {
            return JsonObject.success("完成");
        } else {
            return JsonObject.fail("订单信息异常");
        }
    }

    /**
     * orderComplete
     */
    @ApiOperation(value = "订单取消", nickname = "orderCancle")
    @GetMapping("orderCancle/{id}")
    public JsonObject orderCancle(@PathVariable Long id) {
        boolean b = orderBaseService.cancle(id);
        if (b) {
            return JsonObject.success("完成");
        } else {
            return JsonObject.fail("订单信息异常");
        }
    }
}
