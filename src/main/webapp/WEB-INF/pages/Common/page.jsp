<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/28
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <div class="container-fluid" style="margin: 50px">
        <div class="row">
            <ul class="pagination">
                <li><a href="javascript:goNext(${pageInfo.pageNum-1})">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li class="disabled"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="javascript:goNext(${pageInfo.pageNum+1})">&raquo;</a></li>
                <li><a href="#">当前页${pageInfo.pageNum}/${pageInfo.pages}总页</a></li>
                <li><a style="padding: 0;border: 0"><input type="number" class="form-control"></a></li>
                <li><button class="btn">跳转</button></li>
            </ul>
        </div>
    </div>
</center>
</body>
</html>
