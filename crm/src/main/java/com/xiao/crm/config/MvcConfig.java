package com.xiao.crm.config;

import com.xiao.crm.exceptions.NoLoginException;
import com.xiao.crm.interceptor.NoLoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration //配置类
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Bean  //方法的返回值交给IOC维护
    public NoLoginInterceptor noLoginInterceptor(){
        return new NoLoginInterceptor();
    }

    /**
     * 添加拦截器
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        // 需要一个实现了拦截器功能的实例对象，这里使用的是noLoginException
        registry.addInterceptor(noLoginInterceptor())
                //设置需要拦截
                .addPathPatterns("/**") //默认拦截所有的资源
                //设置不需要拦截的资源
                .excludePathPatterns("/index","/user/login","/css/**","/images/**","/js/**","/lib/**");
    }

}
