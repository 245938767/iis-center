package cn.iiss.openAI;

import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.openAI.domainservice.IOpenAIService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/openai")
@RequiredArgsConstructor
public class OpenAiController {
    private final IOpenAIService openAIService;

    //获得历史记录表

    //发送内容

    @GetMapping("/getChat")
    public AjaxResult getChat(String message) {
        String chat = openAIService.getChat(message);
        if (chat.isEmpty()) {
            return AjaxResult.error();
        } else {
            return AjaxResult.success(chat);
        }
    }
}
