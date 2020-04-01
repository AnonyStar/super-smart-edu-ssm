package com.supsmart.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import javax.sql.DataSource;

/**
 * @author: anonystar
 * @time: 2020/3/22 20:40
 */
@Configuration
@ComponentScan(basePackages = "com.supsmart.portal",
        excludeFilters = {
        @ComponentScan.Filter(type = FilterType.ANNOTATION,classes = Controller.class)
})
@Import(JdbcConfig.class)
public class SpringConfig {

/*    @Value("${driver}")
    private String driverClass;
    @Value("${jdbcurl}")
    private String jdbcurl;
    @Value("${username}")
    private String name;
    @Value("${password}")
    private String password;

    @Bean
    public DataSource getDataSource(){
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(driverClass);
        dataSource.setUrl(jdbcurl);
        dataSource.setUsername(name);
        dataSource.setPassword(password);
        return dataSource;
    }*/
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyConfigInDev() {
        return new PropertySourcesPlaceholderConfigurer();
    }


    @Bean
    public MapperScannerConfigurer getMapperScannerConfigurer(){
        MapperScannerConfigurer configurer = new MapperScannerConfigurer();
        configurer.setBasePackage("com.supsmart.portal.dao");

        return configurer;
    }



}
