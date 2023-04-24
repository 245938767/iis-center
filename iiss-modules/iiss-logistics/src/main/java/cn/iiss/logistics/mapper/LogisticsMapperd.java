package cn.iiss.logistics.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.logistics.LogisticsInfo;
import cn.iiss.logistics.response.LogisticsResponse;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
        }
)
public interface LogisticsMapperd {

    LogisticsMapperd INSTANCE = Mappers.getMapper(LogisticsMapperd.class);

    LogisticsResponse Entity2Response(LogisticsInfo logisticsInfo);
}
