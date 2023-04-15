package cn.iiss.openAI.domainservice;

import cn.iiss.openAI.OpenAIUserInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IOpenAIService extends IService<OpenAIUserInfo> {
    public String getChat(String content);

    List<OpenAIUserInfo> getUserInfo();
}
