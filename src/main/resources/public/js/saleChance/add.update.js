layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;


    /**
     * 监听表单submit事件
         form.on('submit(按钮元素的lay-filter属性值)', function (data) {

        });
     */
    form.on('submit(addOrUpdateSaleChance)', function (data) {
        // 提交数据时的加载层 （https://layer.layui.com/）
        var index = layer.msg("数据提交中,请稍后...",{
            icon:16, // 图标
            time:false, // 不关闭
            shade:0.8 // 设置遮罩的透明度
        });

        // 发送ajax请求
        var url = ctx + "/sale_chance/add"; // 添加操作

        // 通过营销机会的ID来判断当前需要执行添加操作还是修改操作
        // 如果营销机会的ID为空，则表示执行添加操作；如果ID不为空，则表示执行更新操作
        // 通过获取隐藏域中的ID
        var saleChanceId = $("[name='id']").val();
        // 判断ID是否为空
        if (saleChanceId != null && saleChanceId != '') {
            // 更新操作
            url = ctx + "/sale_chance/update";
        }

        $.post(url, data.field, function (result) {
            // 判断操作是否执行成功 200=成功
            if (result.code == 200) {
                // 成功
                // 提示成功
                layer.msg("操作成功！",{icon:6});
                // 关闭加载层
                layer.close(index);
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
        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
        parent.layer.close(index); //再执行关闭
    });


    /**
     * 加载指派人的下拉框
     */
    $.ajax({
        type:"get",
        url:ctx + "/user/queryAllSales",
        data:{},
        success:function (data) {
            // console.log(data);
            // 判断返回的数据是否为空
            if (data != null) {
                // 获取隐藏域设置的指派人ID
                var assignManId = $("#assignManId").val();
                // 遍历返回的数据
                for(var i = 0; i < data.length; i++) {
                    var opt = "";
                    // 如果循环得到的ID与隐藏域的ID相等，则表示被选中
                    if (assignManId == data[i].id) {
                        // 设置下拉选项  设置下拉选项选中
                        opt = "<option value='"+data[i].id+"' selected>"+data[i].uname+"</option>";
                    } else {
                        // 设置下拉选项
                        opt = "<option value='"+data[i].id+"'>"+data[i].uname+"</option>";
                    }

                    // 将下拉项设置到下拉框中
                    $("#assignMan").append(opt);
                }
            }
            // 重新渲染下拉框的内容
            layui.form.render("select");
        }
    });



});