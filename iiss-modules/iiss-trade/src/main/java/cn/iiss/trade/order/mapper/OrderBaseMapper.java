package cn.iiss.trade.order.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.trade.face.request.OrderBaseQueryRequest;
import cn.iiss.trade.face.request.OrderBaseUpdateRequest;
import cn.iiss.trade.face.response.OrderBaseResponse;
import cn.iiss.trade.order.domainservice.model.OrderCreateModel;
import cn.iiss.trade.mapper.TradeMapper;
import cn.iiss.trade.order.OrderBase;
import cn.iiss.trade.order.dto.OrderBaseCreator;
import cn.iiss.trade.order.dto.OrderBaseQuery;
import cn.iiss.trade.order.dto.OrderBaseUpdater;
import cn.iiss.trade.order.dto.OrderBaseVO;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
                TradeMapper.class
        }
)
public interface OrderBaseMapper {
    OrderBaseMapper INSTANCE = Mappers.getMapper(OrderBaseMapper.class);

    OrderBase dtoToEntity(OrderBaseCreator dto);

    OrderBaseUpdater request2Updater(OrderBaseUpdateRequest request);

    OrderBaseCreator request2Dto(OrderBaseCreateRequest request);

    OrderBaseQuery request2Query(OrderBaseQueryRequest request);

    OrderBaseResponse vo2Response(OrderBaseVO vo);

//  OrderDocument entity2Document(OrderBase entity);

    OrderBase model2Entity(OrderCreateModel createModel);

}
