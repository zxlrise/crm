package com.xiao.crm.query;

import com.xiao.crm.base.BaseQuery;

public class CustomerServeQuery extends BaseQuery {

    private String customer; // 客户名称
    private Integer serveType; // 服务类型
    private String state; // 服务状态  服务创建=fw_001  服务分配=fw_002  服务处理=fw_003  服务反馈=fw_004  服务归档=fw_005

    private Integer assigner; // 分配人

    public Integer getAssigner() {
        return assigner;
    }

    public void setAssigner(Integer assigner) {
        this.assigner = assigner;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public Integer getServeType() {
        return serveType;
    }

    public void setServeType(Integer serveType) {
        this.serveType = serveType;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
