package cn.iiss.openAI;

import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * openAI用户使用信息记录
 */
@EqualsAndHashCode(callSuper = false)
public class OpenAIUserInfo {
    private Long id;
    private Long userId;
    private String userInputInfo;
    private String aiOutInfo;
    private Date createTime;

}
