package cn.iiss;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import cn.iiss.commons.security.annotation.EnableCustomConfig;
import cn.iiss.commons.security.annotation.EnableRyFeignClients;
import cn.iiss.commons.swagger.annotation.EnableCustomSwagger2;

/**
 * 系统模块
 *
 * @author ruoyi
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
