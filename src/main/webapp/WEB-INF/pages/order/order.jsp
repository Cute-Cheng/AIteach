<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/12/27
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>我的订单</title>
    <link href="/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/css/nav.css" rel="stylesheet" type="text/css">
    <jsp:include page="../Common/head.jsp"/>
</head>
<body>
<script src="/plugins/jquery/jquery.min.js"></script>
<script src="/plugins/bootstrap/js/bootstrap.js"></script>

<%--    顶部导航栏--%>

<jsp:include page="/WEB-INF/pages/Common/left-better.jsp"/>
<section>
    <div class="container-fluid"style="text-align: center">
        <div class="row">
            <%--        <div th:replace="~{commons/bar::sidebar(activeUri='emps')}"></div>--%>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                <h2>我的订单</h2>
                <h3><a class="btn btn-sm btn-success" href="emp" th:href="#">去我的购物车</a></h3>
                <div class="table-responsive">
                    <table class="table table-striped table-sm" align="center">
                        <thead>
                        <tr>
                            <th>图书图片</th>
                            <th>订单ID</th>
                            <th>订单日期</th>
                            <th>总价</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!--								遍历emps(请求域中)，变量名为emp-->
                        <tr th:each="emp:${emps}" style="text-align: center">
                            <td><img src="imgs/001.jpg" width="50" height="50"></td>
                            <td th:text="${emp.id}">001</td>
                            <td th:text="${emp.lastName}">2020-10-11</td>
                            <td th:text="${dates.format(emp.birth,'yyyy-MM-dd')}">150</td>
                            <td >
                                <a class="btn btn-sm btn-primary" href="/order/getDetail">详情</a>

                                <button th:attr="#+${emp.id}" type="submit" class="btn btn-sm btn-danger deleteBtn">删除</button>
                            </td>
                        </tr>

                        <tr th:each="emp:${emps}" style="text-align: center">
                            <td><img src="imgs/002.jpg" width="50" height="50"></td>
                            <td th:text="${emp.id}">002</td>
                            <td th:text="${emp.lastName}">2020-10-12</td>
                            <td th:text="${#dates.format(emp.birth,'yyyy-MM-dd')}">180</td>
                            <td >
                                <a class="btn btn-sm btn-primary" th:href="@{/emp/}+${emp.id}">详情</a>

                                <button th:attr="del_Uri=@{/emp/}+${emp.id}" type="submit" class="btn btn-sm btn-danger deleteBtn">删除</button>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </main>
            <form id="deleteForm"  method="post">
                <input type="hidden" name="_method" value="delete"/>

            </form>
        </div>
    </div>
</section>

</body>
</html>
