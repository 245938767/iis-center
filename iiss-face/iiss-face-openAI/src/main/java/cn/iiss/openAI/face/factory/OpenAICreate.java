package cn.iiss.openAI.face.factory;

import cn.iiss.openAI.face.factory.chat.Chat;
import cn.iiss.openAI.face.factory.chat.ChatRequestModel;
import cn.iiss.openAI.face.factory.completions.Completions;
import cn.iiss.openAI.face.factory.completions.CompletionsRequestModel;
import cn.iiss.openAI.face.factory.image.Images;
import cn.iiss.openAI.face.factory.image.ImagesRequestModel;
import cn.iiss.openAI.face.model.ImagesResponse;
import cn.iiss.openAI.face.model.ResponseModel;

import java.util.function.Consumer;

public class OpenAICreate {
    /**
     * @param consumer
     * @return
     */
    public static Post<ResponseModel> getCompletions(Consumer<CompletionsRequestModel> consumer) {
        return new Completions<>(consumer);
    }

    /**
     * @param consumer
     * @return
     */
    public static Post<ResponseModel> getChat(Consumer<ChatRequestModel> consumer) {
        return new Chat<>(consumer);
    }

    /**
     * @param consumer
     * @return
     */
    public static Post<ImagesResponse> getImages(Consumer<ImagesRequestModel> consumer) {
        return new Images<>(consumer);
    }
}
