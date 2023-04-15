package cn.iiss.logistics.controller;

import cn.iiss.common.core.web.controller.BaseController;
import cn.iiss.logistics.domainservice.ILogisticsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/logistics/v1")
public class LogisticsController extends BaseController {
    private final ILogisticsService logisticsService;

}
