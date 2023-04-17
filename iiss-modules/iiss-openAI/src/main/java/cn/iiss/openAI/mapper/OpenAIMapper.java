package cn.iiss.openAI.mapper;

import cn.iiss.commons.mapper.DateMapper;
import cn.iiss.commons.mapper.GenericEnumMapper;
import cn.iiss.openAI.OpenAIConverterMapper;
import cn.iiss.openAI.OpenAiUserInfo;
import cn.iiss.openAI.response.OpenAiResponse;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(
        uses = {
                GenericEnumMapper.class,
                DateMapper.class,
                OpenAIConverterMapper.class}
)
public interface OpenAIMapper {

    OpenAIMapper INSTANCE = Mappers.getMapper(OpenAIMapper.class);

    OpenAiResponse Entity2Response(OpenAiUserInfo openAiUserInfo);
}
