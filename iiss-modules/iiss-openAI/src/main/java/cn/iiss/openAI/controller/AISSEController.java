package cn.iiss.openAI.controller;

import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.openAI.model.ChatRequest;
import cn.iiss.openAI.model.ChatResponse;
import cn.iiss.openAI.service.ISSEService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@RestController
@RequestMapping("/openai/sse/v1")
@RequiredArgsConstructor
public class AISSEController {
    private final ISSEService sseService;

    /**
     * 创建sse连接
     *
     * @param headers
     * @return
     */
    @GetMapping("/createSse/{userId}")
    public SseEmitter createConnect(@PathVariable String userId, @RequestHeader Map<String, String> headers) {
        return sseService.createSse(userId);
    }

    /**
     * 聊天接口
     *
     * @param chatRequest
     * @param headers
     */
    @PostMapping("/chat")
    @ResponseBody
    public ChatResponse sseChat(@RequestBody ChatRequest chatRequest, @RequestHeader Map<String, String> headers, HttpServletResponse response) {
        String uid = getUid(headers);
        //获得用户ID
        return sseService.sseChat(uid, chatRequest);
    }

    /**
     * 关闭连接
     *
     * @param headers
     */
    @GetMapping("/closeSse")
    public void closeConnect(@RequestHeader Map<String, String> headers) {
        String uid = getUid(headers);
        sseService.closeSse(uid);
    }


    /**
     * 获取uid
     *
     * @param headers
     * @return
     */
    private String getUid(Map<String, String> headers) {
        return SecurityUtils.getUserId().toString();
//        String uid = headers.get("uid");
//        if (StrUtil.isBlank(uid)) {
//            throw new BusinessException(CodeEnum.Fail);
//        }
//        return uid;
    }

}
