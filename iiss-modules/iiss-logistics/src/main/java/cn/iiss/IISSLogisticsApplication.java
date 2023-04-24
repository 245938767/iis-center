package cn.iiss;

import cn.iiss.common.security.annotation.EnableCustomConfig;
import cn.iiss.common.security.annotation.EnableRyFeignClients;
import cn.iiss.common.swagger.annotation.EnableCustomSwagger2;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 系统模块
 *
 * @author ruoyi
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
@MapperScan("cn.iiss.logistics.**.mapper")
public class IISSLogisticsApplication {
    public static void main(String[] args) {
        SpringApplication.run(IISSLogisticsApplication.class, args);
        System.out.println("物流模块启动成功");
    }
}
