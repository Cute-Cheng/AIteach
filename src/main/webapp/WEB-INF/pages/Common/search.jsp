<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/28
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="width: 100%">
    <div class="col-md-8 col-md-offset-4" style="margin-bottom: 80px">
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

</body>
</html>
