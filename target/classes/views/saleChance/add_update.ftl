<!DOCTYPE html>
<html>
    <head>
        <#include "../common.ftl">
    </head>
    <body class="childrenBody">
        <form class="layui-form" style="width:80%;">
            <#--设置营销机会ID的隐藏域-->
            <input type="hidden" name="id" value="${(saleChance.id)!}">
            <#--设置营销机会ID的隐藏域-->
            <input type="hidden" id="assignManId" value="${(saleChance.assignMan)!}">
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">客户名称</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" lay-verify="required" name="customerName" id="customerName"  value="${(saleChance.customerName)!}" placeholder="请输入客户名称">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">机会来源</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input"  name="chanceSource" id="chanceSource" value="${(saleChance.chanceSource)!}" placeholder="请输入机会来源">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">联系人</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" name="linkMan"  lay-verify="required"  value="${(saleChance.linkMan)!}" placeholder="请输入联系人">
                </div>
            </div>

            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">联系电话</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" lay-verify="phone" name="linkPhone" value="${(saleChance.linkPhone)!}" id="phone" placeholder="请输入联系电话">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">概要</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input"
                            name="overview" value="${(saleChance.overview)!}" id="phone" placeholder="请输入概要">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">成功几率(%)</label>
                <div class="layui-input-block">
                    <input type="text" class="layui-input" name="cgjl" value="${(saleChance.cgjl)!}" placeholder="请输入成功几率">
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">机会描述</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入机会描述信息" name="description" class="layui-textarea">${(saleChance.description)!}</textarea>
                </div>
            </div>
            <div class="layui-form-item layui-row layui-col-xs12">
                <label class="layui-form-label">指派给</label>
                <div class="layui-input-block">
                    <select name="assignMan" id="assignMan">
                        <option value="">请选择</option>
                    </select>
                </div>
            </div>
            <br/>
            <div class="layui-form-item layui-row layui-col-xs12">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-lg" lay-submit=""  lay-filter="addOrUpdateSaleChance">确认 </button>
                    <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
                </div>
            </div>
        </form>
    <script type="text/javascript" src="${ctx}/js/saleChance/add.update.js"></script>
    </body>
</html>