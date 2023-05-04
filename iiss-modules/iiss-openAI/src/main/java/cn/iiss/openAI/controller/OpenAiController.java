package cn.iiss.openAI.controller;

import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.openAI.domainservice.IOpenAIService;
import cn.iiss.openAI.response.OpenAiResponse;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/openai/v1")
@RequiredArgsConstructor
public class OpenAiController {
    private final IOpenAIService openAIService;

    //获得历史记录表

    //发送内容

    @GetMapping("/getChat")
    @ApiOperation(value = "发送问题", nickname = "getChat")
    public AjaxResult getChat(String message) {
        String chat = openAIService.getChat(message);
        if (chat.isEmpty()) {
            return AjaxResult.error();
        } else {
            return AjaxResult.success(chat);
        }
    }

    @GetMapping("/getinfo")
    @ApiOperation(value = "获得用户聊天记录", nickname = "getInfo")
    public JsonObject<List<OpenAiResponse>> getUserInfo() {
        return JsonObject.success(openAIService.getUserInfo());
    }
}
