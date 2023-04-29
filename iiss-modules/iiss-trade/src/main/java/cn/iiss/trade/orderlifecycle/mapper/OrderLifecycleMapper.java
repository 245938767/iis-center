package cn.iiss.trade.orderlifecycle.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.trade.mapper.TradeMapper;
import cn.iiss.trade.orderlifecycle.OrderLifecycle;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleCreator;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleQuery;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleUpdater;
import cn.iiss.trade.orderlifecycle.dto.OrderLifecycleVO;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleCreateRequest;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleQueryRequest;
import cn.iiss.trade.orderlifecycle.request.OrderLifecycleUpdateRequest;
import cn.iiss.trade.orderlifecycle.response.OrderLifecycleResponse;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
                TradeMapper.class
        }
)
public interface OrderLifecycleMapper {
    OrderLifecycleMapper INSTANCE = Mappers.getMapper(OrderLifecycleMapper.class);

    OrderLifecycle dtoToEntity(OrderLifecycleCreator dto);

    OrderLifecycleUpdater request2Updater(OrderLifecycleUpdateRequest request);

    OrderLifecycleCreator request2Dto(OrderLifecycleCreateRequest request);

    OrderLifecycleQuery request2Query(OrderLifecycleQueryRequest request);

    OrderLifecycleResponse vo2Response(OrderLifecycleVO vo);

    default OrderLifecycleResponse vo2CustomResponse(OrderLifecycleVO vo) {
        OrderLifecycleResponse response = vo2Response(vo);
        return response;
    }
}
