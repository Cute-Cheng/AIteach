<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/27
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>详情</title>
    <jsp:include page="/WEB-INF/pages/Common/head.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/pages/Common/left.jsp"/>
    <center>
        <div class="container-fluid text-center" style="width: 500px;height: 500px">
            <div class="row-fluid">
                <div id="thumbnail" class="col-md-12 left-button">
                    <img src="${requestScope.bookDetail.img_path}"
                         class="pdtimg"
                         alt="通用的占位符缩略图">
                    <div id="P_detail">
                        <p>
                            <span>书名：</span>
                            <a class="text-info">${requestScope.bookDetail.b_name}</a>
                        </p>
                        <p>
                            <span>价格：</span>
                            <a class="text-info">${requestScope.bookDetail.b_price}</a>
                        </p>
                        <p>a
                            <span>作者：</span>
                            <a class="text-info">${requestScope.bookDetail.b_author}</>
                        </p>
                        <p>
                            <span>库存：</span>
                            <a class="text-info">${requestScope.bookDetail.b_stock}</a>
                        </p>
                        <p>
                            <span>销量：</span>
                            <a class="text-info">${requestScope.bookDetail.b_sales}</a>
                        </p>

                        <div id="P_function">
                            <p>
                                <button>加入收藏</button>
<%--                                <a href="#" class="btn btn-primary" role="button">--%>
<%--                                    加入收藏--%>
<%--                                </a>--%>
                                <button>加入购物车</button>
<%--                                <a href="#" class="btn btn-default" role="button">--%>
<%--                                    加入购物车--%>
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
