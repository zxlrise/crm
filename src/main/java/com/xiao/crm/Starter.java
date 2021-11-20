package com.xiao.crm;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.support.ErrorPageFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@MapperScan("com.xiao.crm.dao") //dao包下的所有接口类都会被扫描到，并在启动时实例化
@EnableScheduling //启用定时任务
public class Starter {
    public static void main(String[] args) {
        SpringApplication.run(Starter.class);
    }
}



