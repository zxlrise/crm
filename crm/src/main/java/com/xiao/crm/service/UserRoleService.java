package com.xiao.crm.service;

import com.xiao.crm.base.BaseService;
import com.xiao.crm.dao.UserRoleMapper;
import com.xiao.crm.vo.UserRole;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserRoleService extends BaseService<UserRole, Integer> {

    @Resource
    private UserRoleMapper userRoleMapper;
}
