package cn.iiss.logistics.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.logistics.domainservice.ILogisticsService;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/logistics/v1")
public class LogisticsController extends BaseController {
    private final ILogisticsService logisticsService;

    @PostMapping("/create")
    @ApiOperation(value = "创建", nickname = "create")
    public JsonObject<Boolean> createLogistics(LogisticsCreateRequest logisticsCreateRequest) {
        boolean base = logisticsService.createBase(logisticsCreateRequest);
        return JsonObject.success(base);
    }
}
