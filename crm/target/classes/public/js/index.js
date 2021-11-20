layui.use(['form','jquery','jquery_cookie'], function () {
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery,
        $ = layui.jquery_cookie($);


    /**
     * 表单submit提交
     *  form.on('submit(按钮的lay-filter属性值)', function(data){
     *
     *       return false; //阻止表单跳转。
     *  });
     */
    form.on('submit(login)', function(data){

        console.log(data.field) // 当前容器的全部表单字段，名值对形式：{name: value}

        /* 表单元素的非空校验 */

        /* 发送ajax请求，传递用户姓名与密码，执行用户登录操作 */
        $.ajax({
            type:"post",
            url: ctx + "/user/login",
            data:{
                userName:data.field.username,
                userPwd:data.field.password
            },
            success:function (result) { // result是回调函数，用来接收后端返回的数据
                console.log(result);
                // 判断是否登录成功 如果code=200，则表示成功，否则表示失败
                if (result.code == 200) {
                    // 登录成功
                    /**
                     * 设置用户是登录状态
                     *  1. 利用session会话
                     *      保存用户信息，如果会话存在，则用户是登录状态；否则是非登录状态
                     *      缺点：服务器关闭，会话则会失效
                     *  2. 利用cookie
                     *      保存用户信息，cookie未失效，则用户是登录状态
                     */
                    layer.msg("登录成功！", function () {
                        // 判断用户是否选择记住密码（判断复选框是否被选中，如果选中，则设置cookie对象7天生效）
                        if ($("#rememberMe").prop("checked")) {
                            // 选中，则设置cookie对象7天生效
                            // 将用户信息设置到cookie中
                            $.cookie("userIdStr",result.result.userIdStr, {expires:7});
                            $.cookie("userName",result.result.userName, {expires:7});
                            $.cookie("trueName",result.result.trueName, {expires:7});
                        } else {
                            // 将用户信息设置到cookie中
                            $.cookie("userIdStr",result.result.userIdStr);
                            $.cookie("userName",result.result.userName);
                            $.cookie("trueName",result.result.trueName);
                        }


                        // 登录成功后，跳转到首页
                        window.location.href = ctx + "/main";
                    });

                } else {
                    // 登录失败
                    layer.msg(result.msg, {icon:5});
                }
            }
        });

        return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
    });


});