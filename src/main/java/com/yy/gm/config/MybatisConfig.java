package com.yy.gm.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.zaxxer.hikari.HikariDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;
import java.io.IOException;
//
//@Configuration
//@MapperScan("com.yy.gm.mapper")
public class MybatisConfig {
//    @Bean
//    @ConfigurationProperties(prefix = "spring.datasource")//需要告诉druid那里去找对应的设定属性
//    public DataSource dataSource(){
//        DruidDataSource dataSource=new DruidDataSource();
//        return dataSource;
//    }
//    @Bean
//    public SqlSessionFactoryBean sqlSessionFactoryBean() throws IOException {
//        SqlSessionFactoryBean sqlSessionFactoryBean=new SqlSessionFactoryBean();
//        sqlSessionFactoryBean.setDataSource(dataSource());
//        sqlSessionFactoryBean.setTypeAliasesPackage("com.yy.gm.entity");
//        PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
//        sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath*:/mapper/*.xml"));
//        return sqlSessionFactoryBean;
//    }

}
