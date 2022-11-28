package cn.iiss.system.domain;

import java.util.ArrayList;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.iiss.common.core.web.domain.BaseEntity;
import cn.iiss.common.core.xss.Xss;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import cn.iiss.common.core.annotation.Excel;
import cn.iiss.common.core.annotation.Excel.ColumnType;
import cn.iiss.common.core.web.domain.BaseEntity;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 当前在线会话

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 用户和岗位关联 sys_user_post
 * 
 * @author ruoyi
 */
public class SysUserPost
{
    /** 用户ID */
    private Long userId;
    
    /** 岗位ID */
    private Long postId;

    public Long getUserId()
    {
        return userId;
    }

    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getPostId()
    {
        return postId;
    }

    public void setPostId(Long postId)
    {
        this.postId = postId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("userId", getUserId())
            .append("postId", getPostId())
            .toString();
    }
}
