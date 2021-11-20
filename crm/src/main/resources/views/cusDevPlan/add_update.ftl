<!DOCTYPE html>
<html>
    <head>
        <#include "../common.ftl">
    </head>
    <body class="childrenBody">
        <form class="layui-form" style="width:80%;">
            <input name="id" type="hidden" value="${(cusDevPlan.id)!}"/>
            <#--营销机会ID (后台设置到作用域中)-->
            <input name="saleChanceId" type="hidden" value="${sId!}"/>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">计划项内容</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input userName" lay-verify="required" name="planItem"
                           id="planItem" value="${(cusDevPlan.planItem)!}" placeholder="请输入计划项内容">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">计划时间</label>
                <div class="layui-input-block">
                    <#if (cusDevPlan.planDate)??>
                        <input type="text" class="layui-input userName" lay-verify="required" name="planDate"
                               id="planDate" placeholder="请输入计划项时间" value="${(cusDevPlan.planDate)?string("yyyy-MM-dd")}" >
                        <#else>
                        <input type="text" class="layui-input userName" lay-verify="required" name="planDate"
                               id="planDate"  placeholder="请输入计划项时间">
                    </#if>
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">执行效果</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input userEmail" lay-verify="required" name="exeAffect"
                           value="${(cusDevPlan.exeAffect)!}" id="exeAffect" placeholder="请输入执行效果">
                </div>
            </div>


            <br/>
            <div class="layui-form-item layui-row layui-col-xs12">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-lg" lay-submit="" lay-filter="addOrUpdateCusDevPlan">确认</button>
                    <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
                </div>
            </div>
        </form>

    <script type="text/javascript" src="${ctx}/js/cusDevPlan/add.update.js"></script>
    </body>
</html>