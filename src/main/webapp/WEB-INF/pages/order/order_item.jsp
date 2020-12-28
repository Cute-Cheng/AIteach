<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/12/28
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单详情</title>
    <link href="/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/css/nav.css" rel="stylesheet" type="text/css">
</head>
<body>
<script src="/plugins/jquery/jquery.min.js"></script>
<script src="/plugins/bootstrap/js/bootstrap.js"></script>

<%--    顶部导航栏--%>
<jsp:include page="/WEB-INF/pages/Common/left-better.jsp"/>

<center>
    <div class="container-fluid text-center" style="width: 500px;height: 500px">
        <div class="row-fluid">
            <div id="thumbnail" class="col-md-12 left-button">
                <div id="P_detail">
                    <p>
                        <span>日期：</span>
                        <a class="text-info">${requestScope.bookDetail.img_path}</>
                    </p>
                    <p>
                        <span>书名：</span>
                        <a class="text-info">${requestScope.bookDetail.img_path}</a>
                    </p>
                    <p>
                        <span>单价：</span>
                        <a class="text-info">${requestScope.bookDetail.img_path}</a>
                    </p>
                    <p>
                        <span>数量：</span>
                        <a class="text-info">${requestScope.bookDetail.img_path}</>
                    </p>

                    <p>
                        <span>总价：</span>
                        <a class="text-info">${requestScope.bookDetail.img_path}</a>
                    </p>
                    <div id="P_function">
                        <p>
                            <button>返回</button>
                            <%--                                <a href="#" class="btn btn-primary" role="button">--%>
                            <%--                                    加入收藏--%>
                            <%--                                </a>--%>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
</body>
</html>
