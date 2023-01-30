package cn.iiss;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import cn.iiss.commons.security.annotation.EnableCustomConfig;
import cn.iiss.commons.security.annotation.EnableRyFeignClients;
import cn.iiss.commons.swagger.annotation.EnableCustomSwagger2;

/**
 * 产品模块
 *
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class IISSProductApplication {
    public static void main(String[] args) {
        SpringApplication.run(IISSProductApplication.class, args);
        System.out.println("产品启动成功");
    }
}
