layui.use(['table','layer',"form"],function(){
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;

    // 客户流失列表展示
    var  tableIns = table.render({
        elem: '#customerLossList',
        url : ctx+'/customer_loss/list',
        cellMinWidth : 95,
        page : true,
        height : "full-125",
        limits : [10,15,20,25],
        limit : 10,
        toolbar: "#toolbarDemo",
        id : "customerLossListTable",
        cols : [[
            {type: "checkbox", fixed:"center"},
            {field: "id", title:'编号',fixed:"true"},
            {field: 'cusNo', title: '客户编号',align:"center"},
            {field: 'cusName', title: '客户名称',align:"center"},
            {field: 'cusManager', title: '客户经理',align:"center"},
            {field: 'lastOrderTime', title: '最后下单时间',align:"center"},
            {field: 'lossReason', title: '流失原因',align:"center"},
            {field: 'confirmLossTime', title: '确认流失时间',align:"center"},
            {field: 'createDate', title: '创建时间',align:"center"},
            {field: 'updateDate', title: '更新时间',align:"center"},
            {title: '操作',fixed:"right",align:"center", minWidth:150,templet:"#op"}
        ]]
    });


    /**
     * 搜索按钮的点击事件
     */
    $(".search_btn").click(function () {

        /**
         * 表格重载
         *  多条件查询
         */
        tableIns.reload({
            // 设置需要传递给后端的参数
            where: { //设定异步数据接口的额外参数，任意设
                // 通过文本框，设置传递的参数
                customerName: $("[name='cusName']").val() // 客户名称
                ,customerNo: $("[name='cusNo']").val() // 客户编号
                ,state:$("#state").val() // 流失状态
            }
            ,page: {
                curr: 1 // 重新从第 1 页开始
            }
        });

    });


    /**
     * 监听行工具栏
     */
    table.on('tool(customerLosses)',function (data) {
        if (data.event == "add") { // 添加暂缓

            // 打开添加暂缓的页面
            openCustomerLossDialog("<h3>流失管理 - 暂缓措施维护</h3>", data.data.id);

        } else if (data.event == "info") { // 详情

            // 打开详情页面
            openCustomerLossDialog("<h3>流失管理 - 暂缓措施查看</h3>", data.data.id);

        }
    });

    /**
     * 打开添加暂缓/详情页面
     * @param title
     * @param lossId
     */
    function openCustomerLossDialog(title, lossId) {
        layui.layer.open({
            // 类型
            type: 2,
            // 标题
            title: title,
            // 宽高
            area: ['700px', '500px'],
            // url地址
            content: ctx + "/customer_loss/toCustomerLossPage?lossId=" + lossId,
            // 可以最大化与最小化
            maxmin:true
        });
    }



});
