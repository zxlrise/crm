package com.xiao.crm.controller;

import com.xiao.crm.base.BaseController;
import com.xiao.crm.service.UserRoleService;
import com.xiao.crm.vo.UserRole;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class UserRoleController extends BaseController {
    @Resource
    private UserRoleService userRoleService;
}
