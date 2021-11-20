package com.xiao.crm.controller;

import com.xiao.crm.annoation.RequiredPermission;
import com.xiao.crm.base.BaseController;
import com.xiao.crm.base.ResultInfo;
import com.xiao.crm.enums.StateStatus;
import com.xiao.crm.query.SaleChanceQuery;
import com.xiao.crm.service.SaleChanceService;
import com.xiao.crm.utils.CookieUtil;
import com.xiao.crm.utils.LoginUserUtil;
import com.xiao.crm.vo.SaleChance;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("sale_chance")
public class SaleChanceController extends BaseController {

    @Resource
    private SaleChanceService saleChanceService;

    /**
     * 营销机会数据查询 (分页多条件查询)
     *    如果flag的值不为空，且值为1，则表示当前查询的是客户开发计划；否则是查询营销机会计划
     * @param saleChanceQuery
     * @return
     */
    @RequiredPermission(code = "101001")
    @RequestMapping("list")
    @ResponseBody
    public Map<String,Object> querySaleChanceByParams(SaleChanceQuery saleChanceQuery,Integer flag,HttpServletRequest request){

        // 判断flag的值
        if(flag != null && flag == 1){
            // 查询客户开发计划
            // 设置分配状态
            saleChanceQuery.setState(StateStatus.STATED.getType());
            // 设置指派人（当前登录用户的ID
            // 从cookie中获取当前登录用户的ID
            Integer userId = LoginUserUtil.releaseUserIdFromCookie(request);
            saleChanceQuery.getAssignMan(userId);

        }

        return saleChanceService.querySaleChanceByParams(saleChanceQuery);
    }

    /**
     * 进入营销机会管理页面 1010
     * @return
     */
    @RequiredPermission(code = "1010")
    @RequestMapping("index")
    public String index(){
        return "saleChance/sale_chance";
    }

    /**
     * 添加营销机会
     */
    @RequiredPermission(code = "101002")
    @PostMapping("add")
    @ResponseBody
    public ResultInfo addSaleChance(SaleChance saleChance, HttpServletRequest request){
        // 从cookie中获取当前登录的用户名
        String userName = CookieUtil.getCookieValue(request, "userName");
        // 设置用户名到营销机会对象
        saleChance.setCreateMan(userName);
        // 调用Service的添加方法
        saleChanceService.addSaleChance(saleChance);
         return success("营销机会数据添加成功！");
    }
    /**
     * 更新营销机会
     */
    @RequiredPermission(code = "101004")
    @PostMapping("update")
    @ResponseBody
    public ResultInfo updateSaleChance(SaleChance saleChance){
        // 调用Service的添加方法
        saleChanceService.updateSaleChance(saleChance);
        return success("营销机会数据更新成功！");
    }

    /**
     * 进入添加/修改营销机会数据页面
     * @return
     */
    @RequestMapping("toSaleChancePage")
    public String toSaleChancePage(Integer saleChanceId,HttpServletRequest request){

        // 判断saleChanceId是否为空
        if(saleChanceId != null){
            // 通过ID查询营销机会数据
            SaleChance saleChance = saleChanceService.selectByPrimaryKey(saleChanceId);
            // 将数据设置到请求域中
            request.setAttribute("saleChance",saleChance);
        }
        return "saleChance/add_update";
    }

    /**
     * 删除营销机会数据
     * @param ids
     * @return
     */
    @RequiredPermission(code = "101003")
    @RequestMapping("delete")
    @ResponseBody
    public ResultInfo deleteSaleChance(Integer[] ids){
        // 调用service层的删除方法
        saleChanceService.deleteSaleChance(ids);
        return success("营销机会数据删除成功！");
    }

    /**
     * 更新开发状态
     * @param id
     * @param devResult
     * @return
     */
    @RequestMapping("updateSaleChanceDevResult")
    @ResponseBody
    public ResultInfo updateSaleChanceDevResult(Integer id, Integer devResult){
        saleChanceService.updateSaleChanceDevResult(id,devResult);
        return success("更改开发状态成功！");
    }
}
