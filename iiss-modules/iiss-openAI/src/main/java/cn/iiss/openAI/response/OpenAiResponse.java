package cn.iiss.openAI.response;

import cn.iiss.commons.model.AbstractMybatisResponse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class OpenAiResponse extends AbstractMybatisResponse {

    private Long userId;
    private boolean isUser;
    private String content;
}
