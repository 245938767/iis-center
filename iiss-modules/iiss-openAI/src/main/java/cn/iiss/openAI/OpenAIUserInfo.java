package cn.iiss.openAI;

import cn.hutool.core.date.DateTime;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * openAI用户使用信息记录
 */
@EqualsAndHashCode(callSuper = false)
public class OpenAIUserInfo {
    private Long id;
    private Long user_id;
    private String userInputInfo;
    private String aioutInfo;
    private Date createTime;

}
