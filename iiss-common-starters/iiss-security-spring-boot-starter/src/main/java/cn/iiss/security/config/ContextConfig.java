package cn.iiss.security.config;

import cn.iiss.security.base.extension.DummyUserContextAware;
import cn.iiss.security.base.extension.UserContextAware;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ContextConfig {

  @ConditionalOnMissingBean
  @Bean
  public UserContextAware dummyUserContext(){
    return new DummyUserContextAware();
  }

}
