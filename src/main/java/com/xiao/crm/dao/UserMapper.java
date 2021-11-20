package com.xiao.crm.dao;

import com.xiao.crm.base.BaseMapper;
import com.xiao.crm.vo.User;

import java.util.*;


public interface UserMapper extends BaseMapper<User,Integer> {

    //通过用户名查询用户记录，返回用户对象
    public User queryUserByName(String userName);

    // 查询所有的销售人员
    List<Map<String,Object>> queryAllSales();

    // 查询所有的客户经理
    List<Map<String, Object>> queryAllCustomerManagers();
}