package cn.iiss.security;

import cn.iiss.security.auto.SecurityConfig;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * @author gim
 */
@Configuration
@ConditionalOnProperty(prefix = "op.security", name = "enable", havingValue = "true")
public class SecurityAutoConfiguration {

  @Configuration
  @ComponentScan(value = {"cn.iiss.security.base","cn.iiss.security.config"})
  @Import(value = {SecurityConfig.class})
  public class AdminSecurityConfig{

  }
}
