<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <link rel="stylesheet" href="../../../plugins/bootstrap/style.css">--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.css">--%>
<%--</head>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="left.jsp"/>
    <input type="checkbox" id="check">
    <label for="check" >
        <i class="fas fa-bars" id="btn"></i>
        <i class="fas fa-times" id="cancel"></i>
    </label>
    <div class="sidebar">
        <header>图书类别</header>
        <ul>
            <c:forEach items="${sessionScope.kinds}" var="item" varStatus="i">
                <li><a href="/book/bookkind?f_name=${item.f_name}"><i class="fas fa-qrcode"></i>${item.f_name}</a></li>
            </c:forEach>
        </ul>

    </div>
