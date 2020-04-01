package com.supsmart.config;

import ch.qos.logback.core.spi.LogbackLock;
import com.alibaba.druid.pool.DruidDataSource;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInterceptor;
import org.apache.ibatis.logging.log4j2.Log4j2Impl;
import org.apache.ibatis.plugin.Interceptor;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@Component
@EnableTransactionManagement
@PropertySource("classpath:jdbc.properties")
public class JdbcConfig {
    @Value("${jdbc.driver}")
    private String driver;
    @Value("${jdbc.url}")
    private String url;
    @Value("${jdbc.username}")
    private String username;
    @Value("${jdbc.password}")
    private String password;
    /**
     * 创建一个数据源，并存入 spring 容器中
     * @return
     */
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
        try {
            DruidDataSource ds = new DruidDataSource();
            ds.setDriverClassName(driver);
            ds.setUrl(url);
            ds.setUsername(username);
            ds.setPassword(password);
            return ds;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @Bean
    public DataSourceTransactionManager getDataSourceTransactionManager(){
        DataSourceTransactionManager manager = new DataSourceTransactionManager();
        manager.setDataSource(getDataSource());
        return manager;
    }


    @Bean
    public SqlSessionFactoryBean getSqlSessionFactoryBean(){
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(getDataSource());
        sqlSessionFactoryBean.setTypeAliasesPackage("code.tianmao.h5.domain");
        //AuditingInterceptor auditingInterceptor = new AuditingInterceptor();
        PageInterceptor pageInterceptor = new PageInterceptor();
        //PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
    /*    properties.put("dialect", "mysql");
        properties.put("offsetAsPageNum", true);
        properties.put("rowBoundsWithCount", true);
        properties.put("reasonable", true);*/
        pageInterceptor.setProperties(properties);
        Interceptor[] interceptor = {pageInterceptor};
        sqlSessionFactoryBean.setPlugins(interceptor);
        org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();
        //configuration.setLogImpl(LogbackLock.class);
        sqlSessionFactoryBean.setConfiguration(configuration);
        return sqlSessionFactoryBean;
    }
}