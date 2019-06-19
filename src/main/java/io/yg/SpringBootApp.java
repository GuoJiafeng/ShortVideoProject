package io.yg;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import io.yg.service.VideoService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.HttpMessageConverter;

/**
 * Created by Administrator on 2017/12/2.
 */

@SpringBootApplication
@MapperScan("io.yg.dao")
public class SpringBootApp extends SpringBootServletInitializer {


    public static void main(String[] args) {
        SpringApplication.run(SpringBootApp.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SpringBootApp.class);
    }


    @Bean
    public HttpMessageConverters fastjsonHttpMessageConverter() {
        //定义一个转换消息的对象
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();

        //添加fastjson的配置信息 比如 ：是否要格式化返回的json数据
        FastJsonConfig fastJsonConfig = new FastJsonConfig();

        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);

        //在转换器中添加配置信息
        fastConverter.setFastJsonConfig(fastJsonConfig);

        HttpMessageConverter<?> converter = fastConverter;

        return new HttpMessageConverters(converter);

    }

}
