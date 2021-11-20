package com.xiao.crm.dao;


import com.xiao.crm.base.BaseMapper;
import com.xiao.crm.vo.Role;

import java.util.*;

public interface RoleMapper extends BaseMapper<Role,Integer> {
    // 查询角色列表 (返回id和roleName)
    public List<Map<String, Object>> queryAllRoles(Integer userId);

    // 通过角色名查询角色记录
    public Role selectByRoleName(String roleName);
}