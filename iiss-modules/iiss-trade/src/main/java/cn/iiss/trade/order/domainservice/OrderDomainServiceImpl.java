package cn.iiss.trade.order.domainservice;

import cn.hutool.core.lang.Assert;
import cn.hutool.core.util.NumberUtil;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.flowNo.face.service.IFlowNoFacade;
import cn.iiss.mybatis.support.EntityOperations;
import cn.iiss.trade.order.domainservice.model.OrderCompleteModel;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.order.domainservice.model.OrderReviseModel;
import cn.iiss.trade.order.OrderBase;
import cn.iiss.trade.order.events.OrderEvents;
import cn.iiss.trade.face.model.OrderItemModel;
import cn.iiss.trade.order.mapper.OrderBaseMapper;
import cn.iiss.trade.order.repository.OrderBaseRepository;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class OrderDomainServiceImpl implements IOrderDomainService {

    private final OrderBaseRepository orderBaseRepository;

    private final IFlowNoFacade flowNoFacade;

    private final ApplicationEventPublisher eventPublisher;

    @Override
    public boolean orderCreate(OrderCreateModel createModel) {
        Assert.notEmpty(createModel.getItemInfoList());
        BigDecimal itemTotal = createModel.getItemInfoList().stream().map(OrderItemModel::getRealAmount)
                .reduce(BigDecimal.ZERO, NumberUtil::add);
        Long flowNo = flowNoFacade.getNextId();
        OrderBase orderBase = OrderBaseMapper.INSTANCE.model2Entity(createModel);
        orderBase.setFlowNo(flowNo);
        orderBase.setTotalAmount(itemTotal);
        EntityOperations
                .doCreate(orderBaseRepository)
                .create(() -> orderBase)
                .update(e -> e.init(createModel))
                .successHook(x -> eventPublisher.publishEvent(new OrderEvents.OrderCreateEvent(x, createModel)))
                .execute();
        return true;
    }

    @Override
    public boolean orderRevise(OrderReviseModel reviseModel) {

        return true;
    }

    @Override
    public boolean orderComplete(OrderCompleteModel completeModel) {
        LambdaQueryWrapper<OrderBase> eq = new LambdaQueryWrapper<OrderBase>().eq(OrderBase::getFlowNo, completeModel.getFlowNo());
        Optional<OrderBase> order = Optional.of(orderBaseRepository.selectOne(eq));
        if (order.isEmpty()) {
            throw new BusinessException(CodeEnum.NotFindError);
        }
        EntityOperations
                .doUpdate(orderBaseRepository)
                .load(order::get)
                .update(e -> e.complete(completeModel))
                .execute();
        return true;
    }

    @Override
    public boolean orderCancel(Long flowNo) {
        LambdaQueryWrapper<OrderBase> eq = new LambdaQueryWrapper<OrderBase>().eq(OrderBase::getFlowNo, flowNo);
        Optional<OrderBase> order = Optional.of(orderBaseRepository.selectOne(eq));
        if (order.isEmpty()) {
            throw new BusinessException(CodeEnum.NotFindError);
        }
        EntityOperations
                .doUpdate(orderBaseRepository)
                .load(order::get)
                .update(OrderBase::cancel)
                .execute();
        return true;
    }
}
