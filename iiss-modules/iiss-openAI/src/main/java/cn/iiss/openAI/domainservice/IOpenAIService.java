package cn.iiss.openAI.domainservice;

import cn.iiss.openAI.OpenAiUserInfo;
import cn.iiss.openAI.response.OpenAiResponse;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IOpenAIService extends IService<OpenAiUserInfo> {
    public String getChat(String content);

    List<OpenAiResponse> getUserInfo();
}
