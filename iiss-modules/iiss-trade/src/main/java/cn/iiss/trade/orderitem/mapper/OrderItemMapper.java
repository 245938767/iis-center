package cn.iiss.trade.orderitem.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.trade.mapper.TradeMapper;
import cn.iiss.trade.orderitem.dto.OrderItemQuery;
import cn.iiss.trade.orderitem.dto.OrderItemVO;
import cn.iiss.trade.orderitem.OrderItem;
import cn.iiss.trade.orderitem.dto.OrderItemCreator;
import cn.iiss.trade.orderitem.dto.OrderItemUpdater;
import cn.iiss.trade.orderitem.request.OrderItemCreateRequest;
import cn.iiss.trade.orderitem.request.OrderItemQueryRequest;
import cn.iiss.trade.orderitem.request.OrderItemUpdateRequest;
import cn.iiss.trade.orderitem.response.OrderItemResponse;
import org.mapstruct.Mapper;
import cn.iiss.trade.order.domainservice.model.OrderItemModel;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
                TradeMapper.class
        }
)
public interface OrderItemMapper {
    OrderItemMapper INSTANCE = Mappers.getMapper(OrderItemMapper.class);

    OrderItem dtoToEntity(OrderItemCreator dto);

    OrderItemUpdater request2Updater(OrderItemUpdateRequest request);

    OrderItemCreator request2Dto(OrderItemCreateRequest request);

    OrderItemCreator model2Creator(OrderItemModel itemModel);

    OrderItem model2Entity(OrderItemModel itemModel);

    OrderItemQuery request2Query(OrderItemQueryRequest request);

    OrderItemResponse vo2Response(OrderItemVO vo);

    default OrderItemResponse vo2CustomResponse(OrderItemVO vo) {
        return vo2Response(vo);
    }
}
