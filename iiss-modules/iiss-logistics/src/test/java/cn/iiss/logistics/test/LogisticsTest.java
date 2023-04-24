package cn.iiss.logistics.test;

import cn.iiss.logistics.domainservice.ILogisticsService;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.MOCK, classes = Appendable.class)
public class LogisticsTest {
    @Autowired
    private ILogisticsService logisticsService;

    @Test
    public void testCreateLogistics() {
        LogisticsCreateRequest build = LogisticsCreateRequest.builder()
                .consigneeWarehouseId(1L)
                .shipWarehouseId(1L)
                .flowNo(12L)
                .freight(BigDecimal.TEN)
                .logisicsProductRequests(List.of())
                .build();
        boolean base = logisticsService.createBase(build);

    }
}
