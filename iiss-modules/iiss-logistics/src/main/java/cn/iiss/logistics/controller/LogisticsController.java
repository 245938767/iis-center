package cn.iiss.logistics.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.logistics.domainservice.ILogisticsService;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import cn.iiss.logistics.request.LogisticsUpdateRequest;
import cn.iiss.logistics.response.LogisticsDetailResponse;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
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
    public JsonObject<Boolean> updateLogitics(@RequestBody LogisticsUpdateRequest logisticsUpdateRequest) {
        boolean base = logisticsService.complete(logisticsUpdateRequest);
        return JsonObject.success(base);
    }

    @PostMapping("/getPageList")
    @ApiOperation(value = "list", nickname = "list")
    public TableDataInfo getPageList() {
        startPage();
        return logisticsService.getPageList();
    }

    @PostMapping("/getLogisticsDetail/{id}")
    @ApiOperation(value = "详细信息", nickname = "detail")
    public JsonObject<LogisticsDetailResponse> getLogisticsDetail(@PathVariable("id") long id) {
        return JsonObject.success(logisticsService.getLogisticsDetail(id));
    }


}
