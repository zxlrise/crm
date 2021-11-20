layui.use(['table','layer'],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;

    /**
     * 加载计划项数据表格
     */
    var tableIns = table.render({
        id:'cusDevPlanTable'
        // 容器元素的ID属性值
        ,elem: '#cusDevPlanList'
        // 容器的高度 full-差值
        ,height: 'full-125'
        // 单元格最小的宽度
        ,cellMinWidth:95
        // 访问数据的URL（后台的数据接口）
        ,url: ctx + '/cus_dev_plan/list?saleChanceId=' + $("[name='id']").val()
        // 开启分页
        ,page: true
        // 默认每页显示的数量
        ,limit:10
        // 每页页数的可选项
        ,limits:[10,20,30,40,50]
        // 开启头部工具栏
        ,toolbar:'#toolbarDemo'
        // 表头
        ,cols: [[
            // field：要求field属性值与返回的数据中对应的属性字段名一致
            // title：设置列的标题
            // sort：是否允许排序（默认：false）
            // fixed：固定列
            {type:'checkbox', fixed:'center'}
            ,{field: 'id', title: '编号',  sort: true, fixed: 'left'}
            ,{field: 'planItem', title: '计划项', align:'center'}
            ,{field: 'planDate', title: '计划时间', align:'center'}
            ,{field: 'exeAffect', title: '执行效果', align:'center'}
            ,{field: 'createDate', title: '创建时间', align:'center'}
            ,{field: 'updateDate', title: '修改时间', align:'center'}
            ,{title:'操作',templet:'#cusDevPlanListBar', fixed: 'right', align:'center', minWidth:150}
        ]]
    });


    /**
     * 监听头部工具栏
     */
    table.on('toolbar(cusDevPlans)', function (data) {
        if (data.event == "add") { // 添加计划项

            // 打开添加或修改计划项的页面
            openAddOrUpdateCusDevPlanDialog();

        } else if (data.event == "success") { // 开发成功

            // 更新营销机会的开发状态
            updateSaleChanceDevResult(2); // 开发成功

        } else if (data.event == "failed") { // 开发失败

            // 更新营销机会的开发状态
            updateSaleChanceDevResult(3); // 开发失败
        }
    });

    /**
     * 监听行工具栏
     */
    table.on('tool(cusDevPlans)',function (data) {
        if (data.event == "edit") { // 更新计划项

            // 打开添加或修改计划项的页面
            openAddOrUpdateCusDevPlanDialog(data.data.id);

        } else if (data.event == "del") { // 删除计划项

            // 删除计划项
            deleteCusDevPlan(data.data.id);

        }
    });

    /**
     * 打开添加或修改计划项的页面
     */
    function openAddOrUpdateCusDevPlanDialog(id) {

        var title = "计划项管理 - 添加计划项";
        var url = ctx + "/cus_dev_plan/toAddOrUpdateCusDevPlanPage?sId="+$("[name='id']").val();

        // 判断计划项的ID是否为空 （如果为空，则表示添加；不为空则表示更新操作）
        if (id != null && id != '') {
            // 更新计划项
            title = "计划项管理 - 更新计划项";
            url += "&id="+id;
        }

        // iframe层
        layui.layer.open({
            // 类型
            type: 2,
            // 标题
            title: title,
            // 宽高
            area: ['500px', '300px'],
            // url地址
            content: url,
            // 可以最大化与最小化
            maxmin:true
        });
    }

    /**
     * 删除计划项
     */
    function  deleteCusDevPlan(id) {
        // 弹出确认框，询问用户是否确认删除
        layer.confirm('您确认要删除该记录吗？',{icon:3, title:'开发项数据管理'}, function (index) {
            // 发送ajax请求，执行删除操作
            $.post(ctx + '/cus_dev_plan/delete',{id:id}, function (result) {
                // 判断删除结果
                if (result.code == 200) {
                    // 提示成功
                    layer.msg('删除成功',{icon:6});
                    // 刷新数据表格
                    tableIns.reload();
                } else {
                    // 提示失败原因
                    layer.msg(result.msg,{icon:5});
                }
            });
        });
    }


    /**
     * 更新营销机会的开发状态
     * @param devResult
     */
    function updateSaleChanceDevResult(devResult) {
        // 弹出确认框，询问用户是否确认删除
        layer.confirm('您确认执行该操作吗？',{icon:3, title:"营销机会管理"}, function (index) {
            // 得到需要被更新的饿营销机会的ID （通过隐藏域获取）
            var sId = $("[name='id']").val();
            // 发送ajax请求，更新营销机会的开发状态
            $.post(ctx+ '/sale_chance/updateSaleChanceDevResult',{id:sId,devResult:devResult}, function (result) {
                if (result.code == 200) {
                    layer.msg('更新成功！', {icon:6});
                    // 关闭窗口
                    layer.closeAll("iframe");
                    // 刷新父页面
                    parent.location.reload();
                } else {
                    layer.msg(result.msg, {icon:5});
                }
            });
        });
    }



});
