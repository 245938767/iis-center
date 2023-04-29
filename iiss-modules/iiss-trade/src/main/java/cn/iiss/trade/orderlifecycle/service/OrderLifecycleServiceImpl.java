package cn.iiss.trade.orderlifecycle.service;

import cn.iiss.common.core.constant.HttpStatus;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.mybatis.support.EntityOperations;
import cn.iiss.trade.orderlifecycle.OrderLifecycle;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleCreator;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleQuery;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleUpdater;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleVO;
import cn.iiss.trade.orderlifecycle.mapper.OrderLifecycleMapper;
import cn.iiss.trade.orderlifecycle.repository.OrderLifecycleRepository;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.github.pagehelper.PageInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
@Slf4j
@RequiredArgsConstructor
public class OrderLifecycleServiceImpl implements IOrderLifecycleService {
  private final OrderLifecycleRepository orderLifecycleRepository;

  /**
   * createImpl
   */
  @Override
  public Long createOrderLifecycle(OrderLifecycleCreator creator) {
    Optional<OrderLifecycle> orderLifecycle = EntityOperations.doCreate(orderLifecycleRepository)
    .create(() -> OrderLifecycleMapper.INSTANCE.dtoToEntity(creator))
    .update(OrderLifecycle::init)
    .execute();
    return orderLifecycle.isPresent() ? orderLifecycle.get().getId() : 0;
  }

  /**
   * update
   */
  @Override
  public void updateOrderLifecycle(OrderLifecycleUpdater updater) {
    EntityOperations.doUpdate(orderLifecycleRepository)
    .loadById(updater.getId())
    .update(updater::updateOrderLifecycle)
    .execute();
  }

  /**
   * valid
   */
  @Override
  public void validOrderLifecycle(Long id) {
    EntityOperations.doUpdate(orderLifecycleRepository)
    .loadById(id)
    .update(e -> e.valid())
    .execute();
  }

  /**
   * invalid
   */
  @Override
  public void invalidOrderLifecycle(Long id) {
    EntityOperations.doUpdate(orderLifecycleRepository)
    .loadById(id)
    .update(e -> e.invalid())
    .execute();
  }

  /**
   * findById
   */
  @Override
  public OrderLifecycleVO findById(Long id) {
    Optional<OrderLifecycle> orderLifecycle = Optional.of( orderLifecycleRepository.selectById(id));
    return new OrderLifecycleVO(orderLifecycle.orElseThrow(() -> new BusinessException(CodeEnum.NotFindError)));
  }

  /**
   * findByPage
   */
  @Override
  public TableDataInfo findByPage(OrderLifecycleQuery query) {
    LambdaQueryWrapper<OrderLifecycle> orderLifecycleLambdaQueryWrapper = new LambdaQueryWrapper<OrderLifecycle>().orderByDesc(OrderLifecycle::getCreatedAt);
    List<OrderLifecycle> orderLifecycles = orderLifecycleRepository.selectList(orderLifecycleLambdaQueryWrapper);
    TableDataInfo rspData = new TableDataInfo();
    rspData.setCode(HttpStatus.SUCCESS);
    rspData.setRows(orderLifecycles);
    rspData.setMsg("查询成功");
    rspData.setTotal(new PageInfo(orderLifecycles).getTotal());
    return rspData;
  }
}
