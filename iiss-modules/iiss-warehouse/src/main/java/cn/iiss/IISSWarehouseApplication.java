package cn.iiss;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import cn.iiss.common.security.annotation.EnableCustomConfig;
import cn.iiss.common.security.annotation.EnableRyFeignClients;
import cn.iiss.common.swagger.annotation.EnableCustomSwagger2;

/**
 * 物流模块
 *
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class IISSWarehouseApplication {
    public static void main(String[] args) {
        SpringApplication.run(IISSWarehouseApplication.class, args);
        System.out.println("仓库模块启动成功");
    }
}
