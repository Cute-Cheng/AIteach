<%--
  Created by IntelliJ IDEA.
  User: QTY
  Date: 2020/12/26
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>购物车</title>
    <jsp:include page="../Common/head.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/pages/Common/left-better.jsp"/>
    <div style="width: 80%;text-align: center;margin-left: 10%">
        <section>
            <center>
                <table class="table cell-span-tree-table-view" style="text-align: center">
                    <caption style="text-align: center"><h3>您的购物车中共有X件商品总价为:xxxx</h3></caption>
                    <thead>
                    <tr >
                        <th>图书编号</th>
                        <th>书名</th>
                        <th>价格</th>
                        <th>类别</th>
                        <th>作者</th>
                        <th>销量</th>
                        <th>库存</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>00001</td>
                        <td>如何拐跑别人的老婆</td>
                        <td>19.8</td>
                        <td>小说</td>
                        <td>隔壁老王</td>
                        <td>999</td>
                        <td>101</td>
                        <td><a>删除</a></td>
                    </tr>
                    <tr>
                        <td>00001</td>
                        <td>如何拐跑别人的老婆</td>
                        <td>19.8</td>
                        <td>小说</td>
                        <td>隔壁老王</td>
                        <td>999</td>
                        <td>101</td>
                        <td><a>删除</a></td>
                    </tr>
                    <tr>
                        <td>00001</td>
                        <td>如何拐跑别人的老婆</td>
                        <td>19.8</td>
                        <td>小说</td>
                        <td>隔壁老王</td>
                        <td>999</td>
                        <td>101</td>
                        <td><a>删除</a></td>
                    </tr>
                    </tbody>
                    <tr>
                        <td colspan="7" class="text-right">

                        </td>
                        <td><input type="button" value="结算"></td>
                    </tr>
                </table>
            </center>
        </section>
    </div>
</body>
</html>
