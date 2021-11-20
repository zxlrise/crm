package com.xiao.crm.annoation;

import java.lang.annotation.*;

/**
 * 定义方法需要的对应资源的权限码
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RequiredPermission {
    // 权限码
    String code() default "";
}
