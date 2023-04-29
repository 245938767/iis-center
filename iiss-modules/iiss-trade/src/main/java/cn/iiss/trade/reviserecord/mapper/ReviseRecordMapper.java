package cn.iiss.trade.reviserecord.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.trade.mapper.TradeMapper;
import cn.iiss.trade.reviserecord.ReviseRecord;
import cn.iiss.trade.reviserecord.dto.ReviseRecordCreator;
import cn.iiss.trade.reviserecord.dto.ReviseRecordQuery;
import cn.iiss.trade.reviserecord.dto.ReviseRecordUpdater;
import cn.iiss.trade.reviserecord.dto.ReviseRecordVO;
import cn.iiss.trade.reviserecord.request.ReviseRecordCreateRequest;
import cn.iiss.trade.reviserecord.request.ReviseRecordQueryRequest;
import cn.iiss.trade.reviserecord.request.ReviseRecordUpdateRequest;
import cn.iiss.trade.reviserecord.response.ReviseRecordResponse;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
                TradeMapper.class
        }
)
public interface ReviseRecordMapper {
    ReviseRecordMapper INSTANCE = Mappers.getMapper(ReviseRecordMapper.class);

    ReviseRecord dtoToEntity(ReviseRecordCreator dto);

    ReviseRecordUpdater request2Updater(ReviseRecordUpdateRequest request);

    ReviseRecordCreator request2Dto(ReviseRecordCreateRequest request);

    ReviseRecordQuery request2Query(ReviseRecordQueryRequest request);

    ReviseRecordResponse vo2Response(ReviseRecordVO vo);

    default ReviseRecordResponse vo2CustomResponse(ReviseRecordVO vo) {
        ReviseRecordResponse response = vo2Response(vo);
        return response;
    }
}
