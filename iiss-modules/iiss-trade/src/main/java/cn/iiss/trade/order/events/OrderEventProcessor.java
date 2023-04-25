package cn.iiss.trade.order.events;

import cn.iiss.product.face.ProductService;
import cn.iiss.trade.orderitem.dto.OrderItemCreator;
import cn.iiss.trade.orderitem.mapper.OrderItemMapper;
import cn.iiss.trade.orderitem.service.IOrderItemService;
import cn.iiss.trade.orderlifecycle.OrderOperateType;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleCreator;
import cn.iiss.trade.orderlifecycle.service.IOrderLifecycleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import cn.iiss.trade.order.domainservice.model.OrderItemModel;

import java.util.List;

@Component
@RequiredArgsConstructor
@Slf4j
public class OrderEventProcessor {

    private final IOrderItemService orderItemService;

    private final IOrderLifecycleService orderLifecycleService;

    private final ProductService productService;

//  private final OrderDocumentRepository orderDocumentRepository;

    @EventListener
    public void handleOrderCreateForEs(OrderEvents.OrderCreateEvent createEvent) {
//        OrderBase orderBase = createEvent.getOrderBase();
//    OrderDocument document = OrderBaseMapper.INSTANCE.entity2Document(orderBase);
//    document.setId(String.valueOf(orderBase.getFlowNo()));
//    document.setOrderStatusTxt(orderBase.getOrderState().getName());
//    document.setOrderTypeTxt(orderBase.getOrderType().getName());
//    document.setOrderItems(createEvent.getCreateModel().getItemInfoList());
//    orderDocumentRepository.save(document);
    }

    @EventListener
    public void handleOrderCancelForEs(OrderEvents.OrderCancelEvent orderCancelEvent) {

    }

    @EventListener
    public void handleOrderCreateForItem(OrderEvents.OrderCreateEvent orderCreateEvent) {
        List<OrderItemModel> itemInfoList = orderCreateEvent.getCreateModel().getItemInfoList();
        itemInfoList.forEach(model -> {
            OrderItemCreator creator = OrderItemMapper.INSTANCE.model2Creator(model);
            creator.setOrderId(orderCreateEvent.getOrderBase().getId());
            creator.setFlowNo(orderCreateEvent.getOrderBase().getFlowNo());
            orderItemService.createOrderItem(creator);
        });
    }

    @EventListener
    public void handleOrderCreateForLifecycle(OrderEvents.OrderCreateEvent createEvent) {
        OrderLifecycleCreator creator = new OrderLifecycleCreator();
        creator.setFlowNo(createEvent.getOrderBase().getFlowNo());
        creator.setOperateType(OrderOperateType.ORDER_CREATE);
        creator.setOperateUser(createEvent.getCreateModel().getOperateUser());
        creator.setRemark("订单创建成功");
        orderLifecycleService.createOrderLifecycle(creator);
    }


}
