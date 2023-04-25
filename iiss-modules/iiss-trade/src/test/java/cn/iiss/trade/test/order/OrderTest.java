package cn.iiss.trade.test.order;

import cn.iiss.trade.order.domainservice.model.OrderItemModel;
import cn.iiss.trade.order.domainservice.IOrderDomainService;
import cn.iiss.trade.order.domainservice.model.OrderCompleteModel;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.order.domainservice.model.OrderType;
import cn.iiss.trade.order.model.IsPayItem;
import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
class OrderTest {

    @Autowired
    private IOrderDomainService orderDomainService;
    @Before
    public void before() {
    }
    /**
     * 创建订单
     */
    @Test
    public void testCreateOrder() {
        OrderCreateModel orderCreateModel = new OrderCreateModel();
        orderCreateModel.setOrderType(OrderType.SHOP);
        orderCreateModel.setOperateUser("admin");
        orderCreateModel.setAccountId(1L);
        orderCreateModel.setPayList(List.of());
        orderCreateModel.setItemInfoList(List.of(OrderItemModel.builder().itemCount(1).feeRemark("测试").skuId(1L).productName("测试名称").realAmount(BigDecimal.TEN).build()));
//        boolean b = orderDomainService.orderCreate(orderCreateModel);
//        Assert.isTrue(b);

    }

    /**
     * 订单完成
     */
    @Test
    public void testComplete() {
        OrderCompleteModel orderCompleteModel = new OrderCompleteModel();
        orderCompleteModel.setFlowNo(1649633508998717440l);
        orderCompleteModel.setPayItemList(List.of(new IsPayItem(BigDecimal.TEN)));
        orderCompleteModel.setPayTime(Instant.now().getEpochSecond());

//        boolean b = orderDomainService.orderComplete(orderCompleteModel);
//        Assert.isTrue(b);
    }
}
