<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/25
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
<html>
<head>
    <title>首页</title>
    <jsp:include page="WEB-INF/pages/Common/head.jsp"/>

</head>
<body>
<jsp:include page="WEB-INF/pages/Common/left.jsp"/>

<div class="col-md-10" >
    <div class="col-md-5 col-md-offset-4">
        <form class="bs-example bs-example-form " role="form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <input type="text" value="${name}" class="form-control" placeholder="根据产品名模糊查询" id="name_input">
                        <span class="input-group-btn">
                        <button class="btn btn-info" type="button" onclick="seach()">
                            搜索
                        </button>
                    </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div><!-- /.row -->
        </form>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <c:forEach items="${sessionScope.books}" var="item" varStatus="i">
        <div class="col-xs-12 col-md-2 ">

            <div class="thumbnail" onclick='showDetail(${item.b_id})'>
            <a>
                <img src="${item.img_path}"
                     alt="通用的占位符缩略图">
            </a>
            <div id="pdtpri" class="caption">
                <span>¥</span>
                <span>${item.b_price}</span>
            </div>
            <div id="pdtdtl" class="caption">
                <a href="/user/login" target="_blank">
                    <span>${item.b_name}</span>
                </a>
            </div>
        </div>
    </div>
    </c:forEach>
</div>
</div>

<script>
    function showDetail(b_id) {
        console.log(b_id);
        window.location="/book/detail?b_id="+b_id;
    };

    function search() {
        let name = document.getElementById("name_input").value;
        console.log(name);
        window.location="/book/seach?b_name="+name;
    };
</script>

</body>
</html>
