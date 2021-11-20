package com.xiao.crm.exceptions;

/**
 * 自定义参数异常
 */
public class NoLoginException extends RuntimeException {
    private Integer code=300;
    private String msg="用户未登录!";


    public NoLoginException() {
        super("用户未登录!");
    }

    public NoLoginException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public NoLoginException(Integer code) {
        super("用户未登录!");
        this.code = code;
    }

    public NoLoginException(Integer code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
