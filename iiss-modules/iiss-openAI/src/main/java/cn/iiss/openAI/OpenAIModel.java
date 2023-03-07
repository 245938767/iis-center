package cn.iiss.openAI;

import lombok.Builder;

/**
 * openAI中使用的模型对象
 */
@Builder
public class OpenAIModel {
    private String id;
    private String object;

    private String owned_by;
    private String permission;

    public String getId() {
        return id;
    }

    public String getObject() {
        return object;
    }

    public String getOwned_by() {
        return owned_by;
    }

    public String getPermission() {
        return permission;
    }
}
