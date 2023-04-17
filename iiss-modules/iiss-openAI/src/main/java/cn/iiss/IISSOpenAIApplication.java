package cn.iiss;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import cn.iiss.common.security.annotation.EnableCustomConfig;
import cn.iiss.common.security.annotation.EnableRyFeignClients;
import cn.iiss.common.swagger.annotation.EnableCustomSwagger2;

import java.time.Instant;

/**
 * AI模块
 *
 * @author ruoyi
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class IISSOpenAIApplication {
    public static void main(String[] args) {
        SpringApplication.run(IISSOpenAIApplication.class, args);
        System.out.println("AI模块启动成功");
    }
}
