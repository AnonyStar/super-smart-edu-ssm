package com.supsmart.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.*;
import org.springframework.core.Ordered;
import org.springframework.http.MediaType;
import org.springframework.http.converter.ByteArrayHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.ResourceHttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.converter.support.AllEncompassingFormHttpMessageConverter;
import org.springframework.http.converter.xml.Jaxb2RootElementHttpMessageConverter;
import org.springframework.http.converter.xml.SourceHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/**
 * 配置spring mcv
 * @author: anonystar
 * @time: 2020/3/22 20:40
 */
@Configuration
@ComponentScan(
        basePackages = "com.supsmart.portal",
        includeFilters = {
        @ComponentScan.Filter(type = FilterType.ANNOTATION,classes = Controller.class)
})
@EnableAspectJAutoProxy
//@EnableWebMvc
public class WebConfig extends WebMvcConfigurationSupport {

    @Override
    protected void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:index");
        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
        super.addViewControllers(registry);
    }

/*    @Bean
    public SpringResourceTemplateResolver springResourceTemplateResolver(){
        SpringResourceTemplateResolver resolver = new SpringResourceTemplateResolver();
        //模板前缀  目录
        resolver.setPrefix("/WEB-INF/classes/static/pages/");
        //模板后缀  扩展名
        resolver.setSuffix(".html");
        //字符集
        resolver.setCharacterEncoding("utf-8");
        //模式  html5
        resolver.setTemplateMode("HTML5");
        resolver.setCacheable(true);
        return resolver;
    }


    @Bean
    public ISpringTemplateEngine iSpringTemplateEngine(){
        SpringTemplateEngine engine = new SpringTemplateEngine();
        engine.setTemplateResolver(springResourceTemplateResolver());
        return engine;
    }*/



    @Bean
    public ViewResolver getViewResolver(){
       /* ThymeleafViewResolver resolver = new ThymeleafViewResolver();
        resolver.setCharacterEncoding("UTF-8");
        resolver.setTemplateEngine(iSpringTemplateEngine());*/
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/pages/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    protected void configurePathMatch(PathMatchConfigurer configurer) {
        super.configurePathMatch(configurer);
        configurer.setUseTrailingSlashMatch(false);
    }

    /**
     * 过略静态资源
     * @param registry
     */
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        //重写这个方法，映射静态资源文件
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/static/");
        //super.addResourceHandlers(registry);
    }



    @Override
    protected void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        Charset charset = Charset.forName("UTF-8");
        MappingJackson2HttpMessageConverter jacksonConverter =
                new MappingJackson2HttpMessageConverter();
        ObjectMapper objectMapper = jacksonConverter.getObjectMapper();
        objectMapper.setLocale(Locale.CANADA);
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        objectMapper.setTimeZone(TimeZone.getTimeZone("GMT+8"));
        List<MediaType> mediaTypeList = new ArrayList<>();
        mediaTypeList.add(new MediaType("text", "plain", charset));
        mediaTypeList.add(new MediaType("application", "json", charset));
        jacksonConverter.setSupportedMediaTypes(mediaTypeList);


        StringHttpMessageConverter stringConverter = new StringHttpMessageConverter(charset);
        stringConverter.setWriteAcceptCharset(false);

        //保持以下顺序
        converters.add(jacksonConverter);//"application/json" "application/*+json"
        converters.add(new Jaxb2RootElementHttpMessageConverter());//"application/xml" "text/xml" "application/*+xml"
        converters.add(new SourceHttpMessageConverter<>());//"application/xml" "text/xml" "application/*+xml"
        converters.add(new AllEncompassingFormHttpMessageConverter());//"application/x-www-form-urlencoded" "multipart/form-data"
        converters.add(new ByteArrayHttpMessageConverter());//"application/octet-stream" "*/*"
        converters.add(stringConverter);//"text/plain" "*/*"
        converters.add(new ResourceHttpMessageConverter());//"*/*"
    }
}
