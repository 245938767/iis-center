package cn.iiss.security.config;

import cn.iiss.common.annotation.FieldDesc;
import com.google.common.collect.Lists;
import java.util.List;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@Data
@ConfigurationProperties(prefix = "iiss.security.urls")
public class SecurityCommonProperties {

  @FieldDesc(name = "不需要权限的链接地址集合")
  private List<String> unAuthUrls = Lists.newArrayList();
}
