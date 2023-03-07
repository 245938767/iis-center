package cn.iiss.openAI;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "openai")
public  class OpenAI {
    private String apiKey;
    private String orgId;

    public String getApiKey() {
        return apiKey;
    }

    public OpenAI setApiKey(String apiKey) {
        this.apiKey = apiKey;
        return this;
    }

    public String getOrgId() {
        return orgId;
    }

    public OpenAI setOrgId(String orgId) {
        this.orgId = orgId;
        return this;
    }
}
