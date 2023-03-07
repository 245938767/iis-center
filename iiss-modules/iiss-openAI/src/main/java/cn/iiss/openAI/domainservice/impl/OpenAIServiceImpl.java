package cn.iiss.openAI.domainservice.impl;

import cn.iiss.openAI.domainservice.IOpenAIService;
import cn.iiss.openAI.face.factory.OpenAICreate;

public class OpenAIServiceImpl implements IOpenAIService {
    @Override
    public String getChat(String content) {
        return OpenAICreate.getChat(x -> x.addSystemMessages(content)).post().execute().get().getChoices().toString();
    }
}
