package cn.iiss.logistics.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.logistics.domainservice.ILogisticsService;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import cn.iiss.logistics.request.LogisticsUpdateRequest;
import cn.iiss.logistics.response.LogisticsResponse;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/logistics/v1")
public class LogisticsController extends BaseController {
    private final ILogisticsService logisticsService;

    @PostMapping("/create")
    @ApiOperation(value = "创建", nickname = "create")
    public JsonObject<Boolean> createLogistics(@RequestBody LogisticsCreateRequest logisticsCreateRequest) {
        boolean base = logisticsService.createBase(logisticsCreateRequest);
        return JsonObject.success(base);
    }

    @PostMapping("/update")
    @ApiOperation(value = "更新状态", nickname = "update")
    public JsonObject<Boolean> createLogistics(@RequestBody LogisticsUpdateRequest logisticsUpdateRequest) {
        boolean base = logisticsService.complete(logisticsUpdateRequest);
        return JsonObject.success(base);
    }

    @PostMapping("/getPageList")
    @ApiOperation(value = "list", nickname = "list")
    public JsonObject<List<LogisticsResponse>> getPageList() {
        List<LogisticsResponse> pageList = logisticsService.getPageList();
        return JsonObject.success(pageList, CodeEnum.Success.getName());
    }


}
