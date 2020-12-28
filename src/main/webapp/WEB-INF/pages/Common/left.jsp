<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/26
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-default" role="navigation" style="background: #c8e5bc;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/index">图书商城</a>
                </div>
                <div class="collapse navbar-collapse navbar-right" id="example-navbar-collapse0">
                    <ul class="nav navbar-nav">

                        <li><a style="color: #2aabd2">张三 先生/女士</a></li>
                        <c:if test="${sessionScope.bookInfos!=null}">
                            <li><a href="/cart1">购物车</a></li>
                        </c:if>
                        <c:if test="${sessionScope.bookInfos==null}">
                            <li><a href="/cart">购物车</a></li>
                        </c:if>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="#">退出登录</a></li>
                        <%--                            <li>--%>
                        <%--                                <form class="navbar-form navbar-left" role="search">--%>
                        <%--                                    <input type="text" style="border: 0px" placeholder="请输入关键字">--%>
                        <%--                                     <button type="submit" class="btn btn-default">提交</button>--%>
                        <%--                                 </form>--%>
                        <%--                            </li>--%>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>


<%--<div class="span3" style="width: 180px">--%>
<%--    <div class="well sidebar-nav">--%>
<%--        <ul class="nav nav-list">--%>
<%--            <li class="nav-header">Frontend</li>--%>
<%--            <li class="active"><a href="#">HTML 4.01</a></li>--%>
<%--            <li><a href="#">HTML5</a></li>--%>
<%--            <li><a href="#">CSS</a></li>--%>
<%--            <li><a href="#">JavaScript</a></li>--%>
<%--            <li><a href="#">Twitter Bootstrap</a></li>--%>
<%--            <li><a href="#">Firebug</a></li>--%>
<%--            <li class="nav-header">Backend</li>--%>
<%--            <li><a href="#">PHP</a></li>--%>
<%--            <li><a href="#">SQL</a></li>--%>
<%--            <li><a href="#">MySQL</a></li>--%>
<%--            <li><a href="#">PostgreSQL</a></li>--%>
<%--            <li><a href="#">MongoDB</a></li>--%>
<%--        </ul>--%>
<%--    </div><!--/.well -->--%>
<%--</div>--%>

<div class="left-container">
        <nav class="navbar navbar-left" role="navigation" style="background: #c8e5bc ;height: 100%; width:160px;margin-top: -22px;border-radius: 0px">
            <div class="container-fluid">
                <div class="collapse navbar-collapse navbar-left" id="example-navbar-collapse1">
<%--                    <ul class="nav navbar-left">--%>
                    <ul class="nav" style="width: 100px;">
                        <c:forEach items="${sessionScope.kinds}" var="item" varStatus="i">
                            <li class="active" style="text-align: center"><a style="color: black" href="/book/bookkind?f_name=${item.f_name}">${item.f_name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </nav>
</div>
</body>
</html>
