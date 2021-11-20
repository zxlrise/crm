layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;


    /**
     * 加载指派人的下拉框 （客户经理）
     */
    $.ajax({
        type:"get",
        url:ctx + "/user/queryAllCustomerManagers",
        data:{},
        success:function (data) {
            // console.log(data);
            // 判断返回的数据是否为空
            if (data != null) {
                // 获取隐藏域中设置的分配人
                var assigner = $("[name='man']").val();
                // 遍历返回的数据
                for(var i = 0; i < data.length; i++) {
                    var opt = "";
                    // 判断是否需要被选中
                    if (assigner == data[i].id) {
                        // 设置下拉选项
                        opt = "<option value='"+data[i].id+"' selected>"+data[i].uname+"</option>";
                    } else {
                        // 设置下拉选项
                        opt = "<option value='"+data[i].id+"'>"+data[i].uname+"</option>";
                    }

                    // 将下拉项设置到下拉框中
                    $("#assigner").append(opt);
                }
            }
            // 重新渲染下拉框的内容
            layui.form.render("select");
        }
    });



    /**
     * 表单Submit监听
     */
    form.on('submit(addOrUpdateCustomerServe)', function (data) {

        // 提交数据时的加载层 （https://layer.layui.com/）
        var index = top.layer.msg("数据提交中,请稍后...",{
            icon:16, // 图标
            time:false, // 不关闭
            shade:0.8 // 设置遮罩的透明度
        });

        // 得到所有的表单元素的值
        var formData = data.field;

        // 请求的地址
        var url = ctx + "/customer_serve/update"; // 服务反馈操作

        $.post(url, formData, function (result) {
            // 判断操作是否执行成功 200=成功
            if (result.code == 200) {
                // 成功
                // 提示成功
                top.layer.msg("操作成功！",{icon:6});
                // 关闭加载层
                top.layer.close(index);
                // 关闭弹出层
                layer.closeAll("iframe");
                // 刷新父窗口，重新加载数据
                parent.location.reload();
            } else {
                // 失败
                layer.msg(result.msg, {icon:5});
            }
        });

        // 阻止表单提交
        return false;
    });

    /**
     * 关闭弹出层
     */
    $("#closeBtn").click(function () {
        // 当你在iframe页面关闭自身时
        var index = parent.layer.getFrameIndex(window.name); // 先得到当前iframe层的索引
        parent.layer.close(index); // 再执行关闭
    });
   
   
});