package com.xiao.crm.dao;

import com.xiao.crm.base.BaseMapper;
import com.xiao.crm.vo.CustomerOrder;

import java.util.Map;

public interface CustomerOrderMapper extends BaseMapper<CustomerOrder, Integer> {

    Map<String, Object> queryOrderById(Integer orderId);

    CustomerOrder queryLossCustomerOrderByCustomerId(Integer id);
}