package com.xiao.crm.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CustomerServe {
    private Integer id;

    private String serveType;

    private String overview;

    private String customer;

    private String state;

    private String serviceRequest;

    private String createPeople;

    private String assigner;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") // 如果传递的参数是Date类型，要求传入的时间字符串格式
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date assignTime;

    private String serviceProce;

    private String serviceProcePeople;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") // 如果传递的参数是Date类型，要求传入的时间字符串格式
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date serviceProceTime;

    private String serviceProceResult;

    private String myd;
    private String dicValue; //服务类型

    private Integer isValid;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updateDate;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getServeType() {
        return serveType;
    }

    public void setServeType(String serveType) {
        this.serveType = serveType == null ? null : serveType.trim();
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview == null ? null : overview.trim();
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer == null ? null : customer.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getServiceRequest() {
        return serviceRequest;
    }

    public void setServiceRequest(String serviceRequest) {
        this.serviceRequest = serviceRequest == null ? null : serviceRequest.trim();
    }

    public String getCreatePeople() {
        return createPeople;
    }

    public void setCreatePeople(String createPeople) {
        this.createPeople = createPeople == null ? null : createPeople.trim();
    }

    public String getAssigner() {
        return assigner;
    }

    public void setAssigner(String assigner) {
        this.assigner = assigner == null ? null : assigner.trim();
    }

    public Date getAssignTime() {
        return assignTime;
    }

    public void setAssignTime(Date assignTime) {
        this.assignTime = assignTime;
    }

    public String getServiceProce() {
        return serviceProce;
    }

    public void setServiceProce(String serviceProce) {
        this.serviceProce = serviceProce == null ? null : serviceProce.trim();
    }

    public String getServiceProcePeople() {
        return serviceProcePeople;
    }

    public void setServiceProcePeople(String serviceProcePeople) {
        this.serviceProcePeople = serviceProcePeople == null ? null : serviceProcePeople.trim();
    }

    public Date getServiceProceTime() {
        return serviceProceTime;
    }

    public void setServiceProceTime(Date serviceProceTime) {
        this.serviceProceTime = serviceProceTime;
    }

    public String getServiceProceResult() {
        return serviceProceResult;
    }

    public void setServiceProceResult(String serviceProceResult) {
        this.serviceProceResult = serviceProceResult == null ? null : serviceProceResult.trim();
    }

    public String getMyd() {
        return myd;
    }

    public void setMyd(String myd) {
        this.myd = myd == null ? null : myd.trim();
    }

    public Integer getIsValid() {
        return isValid;
    }

    public void setIsValid(Integer isValid) {
        this.isValid = isValid;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getDicValue() {
        return dicValue;
    }

    public void setDicValue(String dicValue) {
        this.dicValue = dicValue;
    }
}