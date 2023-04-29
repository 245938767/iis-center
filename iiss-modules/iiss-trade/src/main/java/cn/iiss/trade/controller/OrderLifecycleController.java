package cn.iiss.trade.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleCreator;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleUpdater;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleVO;
import cn.iiss.trade.orderlifecycle.mapper.OrderLifecycleMapper;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleCreateRequest;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleQueryRequest;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleUpdateRequest;
import cn.iiss.trade.orderlifecycle.response.OrderLifecycleResponse;
import cn.iiss.trade.orderlifecycle.service.IOrderLifecycleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@RestController
@Slf4j
@RequestMapping("orderLifecycle/v1")
@RequiredArgsConstructor
public class OrderLifecycleController extends BaseController {
    private final IOrderLifecycleService orderLifecycleService;

    /**
     * createRequest
     */
    @PostMapping("createOrderLifecycle")
    public JsonObject<Long> createOrderLifecycle(@RequestBody OrderLifecycleCreateRequest request) {
        OrderLifecycleCreator creator = OrderLifecycleMapper.INSTANCE.request2Dto(request);
        return JsonObject.success(orderLifecycleService.createOrderLifecycle(creator));
    }

    /**
     * update request
     */
    @PostMapping("updateOrderLifecycle")
    public JsonObject<String> updateOrderLifecycle(@RequestBody OrderLifecycleUpdateRequest request) {
        OrderLifecycleUpdater updater = OrderLifecycleMapper.INSTANCE.request2Updater(request);
        orderLifecycleService.updateOrderLifecycle(updater);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * valid
     */
    @PostMapping("valid/{id}")
    public JsonObject<String> validOrderLifecycle(@PathVariable Long id) {
        orderLifecycleService.validOrderLifecycle(id);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * invalid
     */
    @PostMapping("invalid/{id}")
    public JsonObject<String> invalidOrderLifecycle(@PathVariable Long id) {
        orderLifecycleService.invalidOrderLifecycle(id);
        return JsonObject.success(CodeEnum.Success.getName());
    }

    /**
     * findById
     */
    @GetMapping("findById/{id}")
    public JsonObject<OrderLifecycleResponse> findById(@PathVariable Long id) {
        OrderLifecycleVO vo = orderLifecycleService.findById(id);
        OrderLifecycleResponse response = OrderLifecycleMapper.INSTANCE.vo2CustomResponse(vo);
        return JsonObject.success(response);
    }

    /**
     * findByPage request
     */
    @PostMapping("findByPage")
    public JsonObject<TableDataInfo> findByPage(
            @RequestBody OrderLifecycleQueryRequest request) {
        startPage();
        TableDataInfo page = orderLifecycleService.findByPage(OrderLifecycleMapper.INSTANCE.request2Query(request));
        return JsonObject.success(
                page
        );
    }
}
