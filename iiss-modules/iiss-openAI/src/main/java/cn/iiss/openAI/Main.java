package cn.iiss.openAI;

import cn.iiss.openAI.face.factory.OpenAICreate;
import cn.iiss.openAI.face.model.ImagesResponse;
import cn.iiss.openAI.face.model.ResponseModel;

import java.util.Optional;

public class Main {
    public static void main(String[] args) {
//        Optional<ResponseModel> execute = OpenAICreate.getChat((x) ->
//                x.addMessages("system", "你好机器人")).post().execute();
//        System.out.println(execute.get());
//        Optional<ImagesResponse> image = OpenAICreate.getImages(x -> x.setN(3).setSize("1024x1024").setPrompt("生成企鹅图片")).post().execute();
        Optional<ResponseModel> execute = OpenAICreate.getChat(x -> {
            x.addUserMessages("生成你好的正则表达式").addSystemMessages("你现在是一个厨师只能回答关于烹饪的知识");
        }).post().execute();
        System.out.println("");

    }
}
