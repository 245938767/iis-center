package cn.iiss.openAI;

import cn.iiss.mybatis.support.BaseMybatisAggregate;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.Instant;
import java.util.Date;

/**
 * openAI用户使用信息记录
 */
@EqualsAndHashCode(callSuper = false)
@Data
public class OpenAIUserInfo extends BaseMybatisAggregate {
    private Long userId;
    private boolean isUser;
    private String content;

    public OpenAIUserInfo(Long userId, boolean isUser, String content) {
        this.userId = userId;
        this.isUser = isUser;
        this.content = content;
        this.setCreatedAt(Instant.now());
        this.setUpdatedAt(Instant.now());
    }
}
