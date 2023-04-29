package cn.iiss.trade.order.service;

import cn.iiss.common.core.constant.HttpStatus;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.mybatis.support.EntityOperations;
import cn.iiss.trade.order.domainservice.IOrderDomainService;
import cn.iiss.trade.order.domainservice.model.OrderCompleteModel;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.order.domainservice.model.OrderType;
import cn.iiss.trade.order.OrderBase;
import cn.iiss.trade.order.dto.OrderBaseCreator;
import cn.iiss.trade.order.dto.OrderBaseQuery;
import cn.iiss.trade.order.dto.OrderBaseUpdater;
import cn.iiss.trade.order.dto.OrderBaseVO;
import cn.iiss.trade.order.model.IsPayItem;
import cn.iiss.trade.order.repository.OrderBaseRepository;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.github.pagehelper.PageInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.util.List;
import java.util.Optional;


@Transactional
@Service
@Slf4j
@RequiredArgsConstructor
public class OrderBaseServiceImpl implements IOrderBaseService {
    private final OrderBaseRepository orderBaseRepository;
    private final IOrderDomainService orderDomainService;

    /**
     * createImpl
     */
    @Override
    public Long createOrderBase(OrderBaseCreator creator) {
        OrderCreateModel orderCreateModel = new OrderCreateModel();
        orderCreateModel.setOperateUser(SecurityUtils.getUsername());
        orderCreateModel.setAccountId(SecurityUtils.getUserId());
        orderCreateModel.setOrderType(OrderType.of(creator.getOrderType()).orElse(OrderType.LOGISTICS));
        orderCreateModel.setAttrs(creator.getAttrs());
        //订单商品信息
        orderCreateModel.setItemInfoList(creator.getOrderItemModelList());
        boolean b = orderDomainService.orderCreate(orderCreateModel);
        return b ? 1L : 0L;
    }

    /**
     * update
     */
    @Override
    public void updateOrderBase(OrderBaseUpdater updater) {
        EntityOperations.doUpdate(orderBaseRepository)
                .loadById(updater.getId())
                .update(updater::updateOrderBase)
                .execute();
    }

    /**
     * valid
     */
    @Override
    public void validOrderBase(Long id) {
        EntityOperations.doUpdate(orderBaseRepository)
                .loadById(id)
                .update(OrderBase::valid)
                .execute();
    }

    /**
     * invalid
     */
    @Override
    public void invalidOrderBase(Long id) {
        EntityOperations.doUpdate(orderBaseRepository)
                .loadById(id)
                .update(OrderBase::invalid)
                .execute();
    }

    /**
     * findById
     */
    @Override
    public OrderBaseVO findById(Long id) {
        Optional<OrderBase> orderBase = Optional.of(orderBaseRepository.selectById(id));
        return new OrderBaseVO(orderBase.orElseThrow(() -> new BusinessException(CodeEnum.NotFindError)));
    }

    /**
     * findByPage
     */
    @Override
    public TableDataInfo findByPage(OrderBaseQuery query) {
        LambdaQueryWrapper<OrderBase> orderBaseLambdaQueryWrapper = new LambdaQueryWrapper<OrderBase>().orderByDesc(OrderBase::getCreatedAt);

        if (query.getUserId() != null && query.getUserId() > 0) {
            orderBaseLambdaQueryWrapper.eq(OrderBase::getAccountId, query.getUserId());
        }
        if (query.getOrderType() != null && query.getOrderType() > 0) {
            orderBaseLambdaQueryWrapper.eq(OrderBase::getOrderType, query.getOrderType());
        }
        List<OrderBase> orderBases = orderBaseRepository.selectList(orderBaseLambdaQueryWrapper);

        TableDataInfo rspData = new TableDataInfo();
        rspData.setCode(HttpStatus.SUCCESS);
        rspData.setRows(orderBases);
        rspData.setMsg("查询成功");
        rspData.setTotal(new PageInfo(orderBases).getTotal());
        return rspData;
    }

    @Override
    public boolean completePay(Long flowNo) {
        Optional<OrderBase> orderBase = Optional.of(orderBaseRepository.selectOne(new LambdaQueryWrapper<OrderBase>().eq(OrderBase::getFlowNo, flowNo)));
        if (orderBase.isEmpty()) {
            throw new BusinessException(CodeEnum.Fail);
        }
        OrderCompleteModel orderCompleteModel = new OrderCompleteModel();
        orderCompleteModel.setFlowNo(flowNo);
        orderCompleteModel.setPayTime(Instant.now().getEpochSecond());
        orderCompleteModel.setPayItemList(List.of(new IsPayItem(orderBase.get().getWaitPay())));
        return orderDomainService.orderComplete(orderCompleteModel);
    }

    @Override
    public boolean cancle(Long flowNo) {
        return orderDomainService.orderCancel(flowNo);
    }
}
