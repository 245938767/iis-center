package cn.iiss

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration

/**
 * 网关启动程序
 *
 * @author ruoyi
 */
@SpringBootApplication(exclude = [DataSourceAutoConfiguration::class])
open class IISSGatewayApplication {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            SpringApplication.run(IISSGatewayApplication::class.java, *args)
            println("(♥◠‿◠)ﾉﾞ  网关启动成功   ლ(´ڡ`ლ)ﾞ ")
        }
    }
}