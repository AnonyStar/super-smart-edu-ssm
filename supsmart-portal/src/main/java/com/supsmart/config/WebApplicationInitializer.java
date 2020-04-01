package com.supsmart.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
/*
 * 在Servlet3.0环境以后，容器会在类路径中查找实现javax.servlet.ServletContainerInitializer接口的类;
 * Spring提供了这个接口的实现类SpringServletContainerInitializer，
 * 反过来这个类又去查找实现WebApplicationInitializer接口的类，并将配置任务交给他完成。
 * 而Spring3.2引入了WebApplicationInitializer的实现类AbstractAnnotationConfigDispatcherServletInitializer;
 * 而我们的SpitterWebInitializer继承了AbstractAnnotationConfigDispatcherServletInitializer，
 * 因此我们部署到Servlet3.0容器中的时候，容器会自动发现他，并用它来配置Servlet上下文。
 */
/**
 * 代替web.xml的作用 初始化spring 环境
 * @author: anonystar
 * @time: 2020/3/22 20:41
 */
public class WebApplicationInitializer  extends AbstractAnnotationConfigDispatcherServletInitializer {
    /**
     * Specify {@code @Configuration} and/or {@code @Component} classes for the
     * {@linkplain #createRootApplicationContext() root application context}.
     *
     * @return the configuration for the root application context, or {@code null}
     * if creation and registration of a root context is not desired
     */
    /*
     * 但是在Spring Web中应用中，通常还会有另一个上下文，他是由ContextLoaderListener创建的，
     * 我们希望DispatcherServlet加载Web组件的bean，如控制器，视图解析器以及处理器映射，
     * ContextLoaderListener要加载应用中的其他bean，即RootConfig来实现。
     */
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[]{SpringConfig.class};
    }

    /**
     * Specify {@code @Configuration} and/or {@code @Component} classes for the
     * {@linkplain #createServletApplicationContext() Servlet application context}.
     *
     * @return the configuration for the Servlet application context, or
     * {@code null} if all configuration is specified through root config classes.
     */
    /*
     * DispatcherServlet启动时，他会创建Spring应用的上下文，并加载配置文件或配置类中的所有生命的bean，
     * 我们要求DispatcherServlet加载应用上下文时，加载我们在WebConfig中的配置bean。
     */
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class<?>[]{WebConfig.class};
    }

    /**
     * Specify the servlet mapping(s) for the {@code DispatcherServlet} &mdash;
     * for example {@code "/"}, {@code "/app"}, etc.
     *  getServletMappings()，它会将一个或者多个路径映射到DispatcherServlet，
     *  本例中，他映射的是"/"，这表示他会是应用默认的Servlet。他会处理进入该应用的所有请求。
     * @see #registerDispatcherServlet(ServletContext)
     */
    @Override
    protected String[] getServletMappings() {
        // 将DispatcherServlet映射到 "/"
        return new String[]{"/"};
    }


}
