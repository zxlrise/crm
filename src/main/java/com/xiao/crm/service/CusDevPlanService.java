package com.xiao.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xiao.crm.base.BaseService;
import com.xiao.crm.dao.CusDevPlanMapper;
import com.xiao.crm.dao.SaleChanceMapper;
import com.xiao.crm.query.CusDevPlanQuery;
import com.xiao.crm.utils.AssertUtil;
import com.xiao.crm.vo.CusDevPlan;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
public class CusDevPlanService extends BaseService<CusDevPlan,Integer> {
    @Resource
    private CusDevPlanMapper cusDevPlanMapper;
    @Resource
    private SaleChanceMapper saleChanceMapper;

    /**
     * 多条件分页查询客户开发机会 (返回的数据格式必须满足layUi中数据表格要求的格式)
     *
     * @param
     * @return
     */
    public Map<String, Object> queryCusDevPlanByParams (CusDevPlanQuery cusDevPlanQuery) {

        Map<String , Object> map = new HashMap<>();

        //开启分页   第一个参数表示从第几页开始，第二个参数表示一页多少条记录
        PageHelper.startPage(cusDevPlanQuery.getPage(), cusDevPlanQuery.getLimit());
        //得到分页对象
        PageInfo<CusDevPlan> pageInfo = new PageInfo<>(cusDevPlanMapper.selectByParams(cusDevPlanQuery));

        //设置map对象
        map.put("code",0);
        map.put("msg","success");
        map.put("count",pageInfo.getTotal());
        //设置分页好的列表
        map.put("data",pageInfo.getList());
        return map;
    }

    /**
     * 添加计划项
     *     1、参数校验
     *        营销机会ID  非空
     *        计划项内容  非空
     *        计划项时间  非空
     *     2、设置参数默认值
     *        is_valid = 1
     *        createDate = 当前系统时间
     *        updateDate = 当前系统时间
     *     3、执行添加操作，判断受影响的行数
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public  void addCusDevPlan(CusDevPlan cusDevPlan){
        // 1、参数校验
        checkCusDevPlanParams(cusDevPlan);
        // 2、设置参数默认值
        cusDevPlan.setIsValid(1);
        cusDevPlan.setCreateDate(new Date());
        cusDevPlan.setUpdateDate(new Date());

        // 3、执行添加操作,判断结果
        AssertUtil.isTrue(cusDevPlanMapper.insertSelective(cusDevPlan) != 1,"计划项数据添加失败!");

    }

    private void checkCusDevPlanParams(CusDevPlan cusDevPlan) {
        Integer sId = cusDevPlan.getSaleChanceId();
        AssertUtil.isTrue(sId == null || saleChanceMapper.selectByPrimaryKey(sId) == null,"数据异常，请重试！");
        AssertUtil.isTrue(StringUtils.isBlank(cusDevPlan.getPlanItem()),"计划项内容不能为空！");
        AssertUtil.isTrue(cusDevPlan.getPlanDate() == null,"计划时间不能为空");
    }

    /**
     * 更新计划项
     *     1、参数校验
     *        id 非空 记录存在
     *        营销机会ID  非空
     *        计划项内容  非空
     *        计划项时间  非空
     *     2、设置参数默认值
     *        updateDate = 当前系统时间
     *     3、执行添加操作，判断受影响的行数
     * @param cusDevPlan
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void updateCusDevPlan(CusDevPlan cusDevPlan){
        // 1、参数校验
        AssertUtil.isTrue(cusDevPlan.getId() == null ||
                cusDevPlanMapper.selectByPrimaryKey(cusDevPlan.getId()) == null,"数据异常，请重试！" );
        checkCusDevPlanParams(cusDevPlan);

        // 2、设置参数默认值
        cusDevPlan.setUpdateDate(new Date());

        // 3、执行添加操作，判断受影响的行数
        AssertUtil.isTrue(cusDevPlanMapper.updateByPrimaryKeySelective(cusDevPlan) != 1,"计划项更新失败！");
    }

    /**
     * 删除计划项
     *   1、判断Id是否为空，且数据存在
     *   2、修改isValid的值
     *   3、执行删除操作，判断受影响的行数
     * @param id
     */
    public void deleteCueDevPlan(Integer id){
        //1、判断Id是否为空，且数据存在
        AssertUtil.isTrue(id == null,"待删除记录不存在");
        CusDevPlan cusDevPlan = cusDevPlanMapper.selectByPrimaryKey(id);
        //2、修改isValid的值
        cusDevPlan.setIsValid(0);
        cusDevPlan.setUpdateDate(new Date());
        //3、执行删除操作，判断受影响的行数
        AssertUtil.isTrue(cusDevPlanMapper.updateByPrimaryKeySelective(cusDevPlan) != 1,"计划项删除失败！");

    }
}
