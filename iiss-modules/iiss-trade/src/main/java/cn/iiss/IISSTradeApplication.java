package cn.iiss;

import cn.iiss.common.security.annotation.EnableCustomConfig;
import cn.iiss.common.security.annotation.EnableRyFeignClients;
import cn.iiss.common.swagger.annotation.EnableCustomSwagger2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 物流模块
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
@MapperScan("cn.iiss.trade.**.repository")
public class IISSTradeApplication {
    public static void main(String[] args) {
        SpringApplication.run(IISSTradeApplication.class, args);
        System.out.println("交易模块启动成功");
    }
}
