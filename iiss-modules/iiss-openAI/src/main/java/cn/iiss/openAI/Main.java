package cn.iiss.openAI;

import cn.iiss.openAI.face.factory.OpenAICreate;
import cn.iiss.openAI.face.model.ResponseModel;

import java.util.Optional;

public class Main {
    public static void main(String[] args) {
//        Optional<ResponseModel> execute = OpenAICreate.getChat((x) ->
//                x.addMessages("system", "你好机器人")).post().execute();
//        System.out.println(execute.get());
        Optional<ResponseModel> image = OpenAICreate.getImages(x -> x.setPrompt("企鹅爱笑图片")).post().execute();
        System.out.println(image.get());
    }
}
