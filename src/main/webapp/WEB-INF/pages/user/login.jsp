<%--
  Created by IntelliJ IDEA.
  User: xf
  Date: 2020/12/24
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/pages/Common/head.jsp"/>
    <link rel="stylesheet" type="text/css" href="/css/nav.css">
</head>
<body>
<div>
    <jsp:include page="/WEB-INF/pages/Common/nav.jsp"/>
</div>

<div id="myCarousel" class="carousel slide" style="margin-top: -20px;width:1000px">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/imgs/1.jpg" alt="First slide" style="margin-left: 40px">

        </div>
        <div class="item">
            <img src="/imgs/2.jpg" alt="Second slide" style="margin-left: 40px">

        </div>
        <div class="item">
            <img src="/imgs/3.jpg" alt="Third slide" style="margin-left: 40px">

        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="margin-left: -30px">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
·
<%--    登录表单 - begin--%>
<div class="container" style="width: 550px;height: 500px;margin-top: -400px;margin-left: 900px">
    <div class="row" >
        <form class="form-horizontal" role="form">
                <p style="margin-left: 260px;font-size: 25px;font-weight: bolder">用户登录入口</p>
                <div class="form-group has-feedback" style="margin-left: 110px">
                    <label for="email" class="col-sm-2 control-label">账号</label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" id="email" placeholder="请输入邮箱/账号">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                        <label id="email_label" style="display: none" class="text-danger">邮箱/账号不存在</label>
                    </div>
                </div>

                <div class="form-group has-feedback" style="margin-left: 110px">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="password" placeholder="请输入密码">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        <label id="password_label" style="display: none" class="text-danger">密码不存在</label>
                    </div>
                </div>

                <div class="form-group has-feedback" style="margin-left: 110px" >
                    <label for="code" class="col-sm-2 control-label" >验证码</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="code" placeholder="请输入验证码">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        <label id="code_label" style="display: none" class="text-danger">验证码错误</label>
                    </div>

                    <div class="col-sm-2">
                        <button type="button" onclick="sendMsg()" class="btn btn-success">发送验证码</button>
                    </div>
                </div>

                <div class="form-group" style="margin-left: 110px">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="rem">请记住我
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-sm-offset-2 col-sm-10">
                        <%--                            一定要设置成普通按钮 登录--%>
                        <button type="button" onclick="login()" class="btn btn-default" style="margin-left: 90px">登录</button>
                            <%--                            一定要设置成普通按钮 取消--%>
                            <button type="button"  class="btn btn-default" style="margin-left: 100px">取消</button>
                    </div>

                </div>


        </form>
    </div>
</div>
<%--    登录表单end--%>



<script>

    $(function(){
        //等DOM元素全部加载完毕之后,会执行此处的代码...
        //从本地存储中根据key将email获取出来
        let email = localStorage.getItem("email");
        let password=localStorage.getItem("password");

        //放入到input标签中
        let email_input = document.getElementById("email");
        let password_input=document.getElementById("password");
        password_input.value=password;
        email_input.value = email;
    })

    function logins(){
        //获取记住密码的控件
        let ck = document.getElementById("rem");
        //判断是否记住我
        if(ck.checked){
            //将邮箱中的输入的数据进行保存
            //h5 - 本地存储
            let email = document.getElementById("email").value;
            let password=document.getElementById("password").value;
            localStorage.setItem("email",email);
            locatStorage.setItem("password",password);
        }else{
            //清除保存邮箱
            localStorage.removeItem("email");
            localStorage.removeItem("password");
        }
    }

    //发送验证码的功能
    function sendMsg(){
        //获取邮箱值
        //jquery的写法 - js的框架
        let email = $("#email").val();
        let password=$("#password").val();
        //进行一个非空判断...
        if(email.length == 0 || password.length==0){
            alert("sorry,email must be not null");
        }else{
            //发送邮箱到后台...
            //window.location="/user/send?email="+value;

            //ajax方式进行发送...
            $.get("/user/send","email="+email+"&password="+password,function(result){
                //此处的result是后台返回给页面的数据 - json数据
                console.log(result);
                if(result.code == 404){
                    alert("邮箱未注册");
                }else if(result.code==200) {
                    alert("验证码已经发送到您的邮箱!请你查收!");
                }else if(result.code==505){
                    alert("密码错误");
                }
            });
        }
    }

    //登录按钮的功能
    function login(){

        logins();

        let email = $("#email").val();
        let code = $("#code").val();
        let password=$("#password").val();

        document.getElementById("email_label").style.display="none";
        document.getElementById("password_label").style.display="none";
        document.getElementById("code_label").style.display="none";

        //json数据
        $.post("/user/logincl",{email:email,password:password,code:code},function(result){
            if(result.code==404){
                document.getElementById("email_label").style.display="";
                console.log(result);
            }else if(result.code == 500){
                document.getElementById("code_label").style.display="";
                alert("验证码错误")
            }else if(result.code==200){
                //登录成功... 跳转到首页...
                alert("登录成功")
            }
        });
    }
</script>
</body>
</html>