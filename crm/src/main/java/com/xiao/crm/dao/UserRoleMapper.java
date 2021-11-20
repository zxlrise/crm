package com.xiao.crm.dao;

import com.xiao.crm.base.BaseMapper;
import com.xiao.crm.vo.UserRole;

public interface UserRoleMapper extends BaseMapper<UserRole, Integer> {

    // 根据用户Id查询用户角色记录
    Integer countUserRoleByUserId(Integer userId);
    // 根据用户Id删除用户角色记录
    Integer deleteUserRoleByUserId(Integer userId);
}