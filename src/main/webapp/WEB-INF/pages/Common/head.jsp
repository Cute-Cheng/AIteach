<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/25
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
    <%
        String basePath = request.getScheme()
                +"://"
                +request.getServerName()
                +":"
                +request.getServerPort()
                +request.getContextPath()
                +"/";
        pageContext.setAttribute("basePath",basePath);
    %>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.css">
    <script type="text/javascript" src="/plugins/jquery/jquery.min.js"></script>


