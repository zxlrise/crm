package com.xiao.crm.controller;

import com.xiao.crm.base.BaseController;
import com.xiao.crm.base.ResultInfo;
import com.xiao.crm.query.RoleQuery;
import com.xiao.crm.service.RoleService;
import com.xiao.crm.vo.Role;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.naming.spi.ResolveResult;
import javax.servlet.http.HttpServletRequest;
import javax.xml.transform.Result;
import java.util.*;

@Controller
@RequestMapping("role")
public class RoleController extends BaseController {

    @Resource
    private RoleService roleService;

    /**
     * 查询所有的角色列表
     * @return
     */
    @RequestMapping("queryAllRoles")
    @ResponseBody
    public List<Map<String, Object>> queryAllRoles(Integer userId){
        return roleService.queryAllRoles(userId);
    }

    /**
     * 分页多条件查询角色列表
     * @param roleQuery
     * @return
     */
    @GetMapping("list")
    @ResponseBody
    public Map<String,Object> selectByParams(RoleQuery roleQuery) {
        return roleService.queryByParamsForTable(roleQuery);
    }

    /**
     * 进入角色管理页面
     * @return
     */
    @RequestMapping("index")
    public String index() {
        return "role/role";
    }

    @RequestMapping("add")
    @ResponseBody
    public ResultInfo addRole(Role role){
        roleService.addRole(role);
        return success("角色添加成功！");
    }

    /**
     * 进入添加或者修改角色的页面
     * @return
     */
    @RequestMapping("toAddOrUpdateRolePage")
    public String toAddOrUpdateRolePage(Integer roleId, HttpServletRequest request){
        if(roleId != null){
            Role role = roleService.selectByPrimaryKey(roleId);
            request.setAttribute("role", role);
        }
        return "role/add_update";
    }

    /**
     * 修改角色
     * @param role
     * @return
     */
    @RequestMapping("update")
    @ResponseBody
    public ResultInfo updateRole(Role role){
        roleService.updateRole(role);
        return success("角色修改成功！");
    }

    /**
     * 删除角色
     * @param roleId
     * @return
     */
    @PostMapping("delete")
    @ResponseBody
    public ResultInfo deleteRole(Integer roleId){
        roleService.deleteRole(roleId);
        return success("角色删除成功！");
    }

    /**
     * 角色授权
     */
    @RequestMapping("addGrant")
    @ResponseBody
    public ResultInfo addGrant(Integer roleId, Integer[] mIds){
        roleService.addGrant(roleId, mIds);
        return success("角色资源授权成功！");
    }
}
