package cn.iiss.trade.order.service;

import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.trade.order.dto.OrderBaseCreator;
import cn.iiss.trade.order.dto.OrderBaseQuery;
import cn.iiss.trade.order.dto.OrderBaseUpdater;
import cn.iiss.trade.order.dto.OrderBaseVO;

public interface IOrderBaseService {
    /**
     * create
     */
    Long createOrderBase(OrderBaseCreator creator);

    /**
     * update
     */
    void updateOrderBase(OrderBaseUpdater updater);

    /**
     * valid
     */
    void validOrderBase(Long id);

    /**
     * invalid
     */
    void invalidOrderBase(Long id);

    /**
     * findById
     */
    OrderBaseVO findById(Long id);

    /**
     * findByPage
     */
    TableDataInfo findByPage(OrderBaseQuery query);

    /**
     * 完成支付虚拟方法
     */
    boolean completePay(Long flowNo);

    /**
     * 取消订单
     * @param flowNo
     * @return
     */
    boolean cancle(Long flowNo);
}
