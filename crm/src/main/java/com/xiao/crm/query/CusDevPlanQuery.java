package com.xiao.crm.query;

import com.xiao.crm.base.BaseQuery;

public class CusDevPlanQuery extends BaseQuery {

    private Integer saleChanceId; //营销机会的主键

    public Integer getSaleChanceId() {
        return saleChanceId;
    }

    public void setSaleChanceId(Integer saleChanceId) {
        this.saleChanceId = saleChanceId;
    }
}
