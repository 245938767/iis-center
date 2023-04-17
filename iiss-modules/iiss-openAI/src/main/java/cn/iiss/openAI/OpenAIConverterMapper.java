package cn.iiss.openAI;

import org.apache.ibatis.type.MappedTypes;

import java.time.Instant;

public class OpenAIConverterMapper {
    Long instant2Long(Instant instant) {
        return instant.getEpochSecond();
    }
}
