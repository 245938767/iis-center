package cn.iiss;

import com.unfbx.chatgpt.OpenAiStreamClient;
import com.unfbx.chatgpt.function.KeyRandomStrategy;
import com.unfbx.chatgpt.interceptor.OpenAILogger;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import cn.iiss.common.security.annotation.EnableCustomConfig;
import cn.iiss.common.security.annotation.EnableRyFeignClients;
import cn.iiss.common.swagger.annotation.EnableCustomSwagger2;
import org.springframework.context.annotation.Bean;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/**
 * AI模块
 */
@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class IISSOpenAIApplication {

    private final String apiHost = "https://api.openai.com/";
//    private final String apiKey = "sk-6zf2jVML6Ei5Ahfbm6aQ5T3BlbkFJxnS4nkOUoiZ2jcLhSrzF";
    private final String apiKey = "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";

    public static void main(String[] args) {
        SpringApplication.run(IISSOpenAIApplication.class, args);
        System.out.println("AI模块启动成功");
    }


    @Bean
    public OpenAiStreamClient openAiStreamClient() {
        //本地开发需要配置代理地址
        Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("127.0.0.1", 7890));
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new OpenAILogger());
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.HEADERS);
        OkHttpClient okHttpClient = new OkHttpClient
                .Builder()
                .proxy(proxy)
                .addInterceptor(httpLoggingInterceptor)
                .connectTimeout(30, TimeUnit.SECONDS)
                .writeTimeout(600, TimeUnit.SECONDS)
                .readTimeout(600, TimeUnit.SECONDS)
                .build();
        return OpenAiStreamClient
                .builder()
                .apiHost(apiHost)
                .apiKey(Collections.singletonList(apiKey))
                //自定义key使用策略 默认随机策略
                .keyStrategy(new KeyRandomStrategy())
                .okHttpClient(okHttpClient)
                .build();
    }
}
