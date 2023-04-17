package cn.iiss.openAI;

import cn.iiss.mybatis.support.BaseMybatisAggregate;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.Instant;

/**
 * openAI用户使用信息记录
 */
@EqualsAndHashCode(callSuper = false)
@Data
@TableName(autoResultMap = true)
public class OpenAiUserInfo extends BaseMybatisAggregate {
    private Long userId;
    private boolean isUser;
    private String content;

    public OpenAiUserInfo() {
    }

    public OpenAiUserInfo(Long userId, boolean isUser, String content) {
        this.userId = userId;
        this.isUser = isUser;
        this.content = content;
        prePersist();
    }

    public OpenAiUserInfo(Long userId, boolean isUser, String content, Instant createdAt, Instant updatedAt) {
        this.userId = userId;
        this.isUser = isUser;
        this.content = content;
        this.setCreatedAt(createdAt);
        this.setUpdatedAt(updatedAt);
    }
}
