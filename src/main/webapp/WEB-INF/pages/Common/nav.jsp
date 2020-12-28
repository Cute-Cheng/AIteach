<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/12/25
  Time: 9:28 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--    布局 - login - begin--%>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">图书商城</a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li class="active"><a href="#">登录</a></li>
                        <li><a href="#">首页</a></li>
                        <li><a href="#">注册</a></li>

                        <c:if test="${user!=null}">
<%--                            OGNL - 对象导航语言--%>
                            <li><a href="#">${user.username}</a></li>
                            <li><a href="#">安全退出</a></li>
                            <li><a href="#">我的收藏</a></li>
                        </c:if>

                        <li><img id="header_imgs" src="/mvc/imgs/xxx.png"></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<%--    login-end--%>

