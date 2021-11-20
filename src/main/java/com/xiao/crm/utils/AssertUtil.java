package com.xiao.crm.utils;

import com.xiao.crm.exceptions.ParamsException;

public class AssertUtil {


    /**
     * 判断条件是否满足
     *  如果条件满足，则抛出参数异常
     * @param flag
     * @param msg
     */
    public  static void isTrue(Boolean flag,String msg){
        if(flag){
            throw new ParamsException(msg);
        }
    }

}
