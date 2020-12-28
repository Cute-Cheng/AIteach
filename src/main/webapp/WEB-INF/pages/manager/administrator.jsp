<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>管理员页面</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:include page="/WEB-INF/pages/Common/head.jsp"/>
        <style>
            #operation{
                margin-left: -20px;
            }
        </style>
    </head>
    <body>
        <div style="width: 80%;text-align: center;margin-left: 10%">
            <center>
                <table class="table cell-span-tree-table-view" style="text-align: center">
                    <caption style="text-align: center"><h3>书籍管理</h3></caption>
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
                        <td>
                            <div id="operation" class="btn-group">
                                <button type="button" class="btn btn-default">更新</button>
                                <button type="button" class="btn btn-default">删除</button>
                            </div>  
                        </td>
                    </tr>
                    <tr>
                        <td>00001</td>
                        <td>如何拐跑别人的老婆</td>
                        <td>19.8</td>
                        <td>小说</td>
                        <td>隔壁老王</td>
                        <td>999</td>
                        <td>101</td>
                        <td>
                            <div id="operation" class="btn-group">
                                <button type="button" class="btn btn-default">更新</button>
                                <button type="button" class="btn btn-default">删除</button>
                            </div>  
                        </td>
                    </tr>
                    <tr>
                        <td>00001</td>
                        <td>如何拐跑别人的老婆</td>
                        <td>19.8</td>
                        <td>小说</td>
                        <td>隔壁老王</td>
                        <td>999</td>
                        <td>101</td>
                        <td>
                            <div id="operation" class="btn-group">
                                <button type="button" class="btn btn-default">更新</button>
                                <button type="button" class="btn btn-default">删除</button>
                            </div>  
                        </td>
                    </tr>
                    </tbody>
                    <tr style="text-align: center">
                        <td colspan="8">
                            <div class="btn-group btn-group-lg">
                                <button type="button" class="btn btn-default" onclick="methods()">添加</button>
                            </div>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        
        



        <script>
            function methods(){
                var iWidth = 400; //弹出窗口的宽度;
                var iHeight = 500; //弹出窗口的高度;
                var iTop = (window.screen.availHeight - 30 - iHeight) / 2; //获得窗口的垂直位置;
                var iLeft = (window.screen.availWidth - 10 - iWidth) / 2; //获得窗口的水平位置;
                window.open("astiorprtadd.jsp", "添加商品", "height=" + iHeight + ", width=" + iWidth + ", " +
                "top=" + iTop + ", left=" + iLeft ,"resizable:no","scrollbars:yes");

            }
        </script>
    </body>
</html>