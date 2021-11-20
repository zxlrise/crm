package com.xiao.crm.query;

import com.xiao.crm.base.BaseQuery;

public class RoleQuery extends BaseQuery {

    private String roleName; //角色名称

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
