
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/top.css">
    <link rel="stylesheet" href="../css/modify.css">
    <link rel="stylesheet" href="../css/biaoge.css">
</head>
<body>
<div id="header">
    <div class='h-content'>
        <ul>
            <li>
                <a href="main.jsp" target="_self">
                    <span>首页</span>
                </a>
            </li>



        </ul>
    </div>
</div>


<div class="topic"> <h2>机型管理</h2></div>



<div id="box" class="clearfix">

    <button class="fl" type="button" title="新建" onclick="location.href='product-add.jsp'" >新建</button>
    <button class="fl" type="button" title="删除" >删除</button>

    <form action="" method="post">
        <div class="inputText fl">
            <input class='fl' type="text" placeholder="请输入机型">
            <button class="fl">搜索</button>
        </div>
    </form>


    <table>
        <tr>
            <th>mobileID</th>
            <th>机型名称</th>
            <th>价格</th>
            <th>处理器</th>
            <th>屏幕</th>
            <th>规格</th>
            <th>商家</th>
            <th>操作</th>

        </tr>

        <tbody>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button class="ftr" type="button" title="更新" onclick="location.href='product-update.jsp'" >更新</button>
                <button class="ftr"  type="button">删除</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button class="ftr"  type="button" title="更新" onclick="location.href='product-update.jsp'">更新</button>
                <button class="ftr"  type="button">删除</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button class="ftr"  type="button" title="更新" onclick="location.href='product-update.jsp'">更新</button>
                <button class="ftr"  type="button">删除</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button class="ftr"  type="button" title="更新" onclick="location.href='product-update.jsp'">更新</button>
                <button class="ftr"  type="button">删除</button>
            </td>
        </tr>
        </tbody>
        <tfoot>

        </tfoot>
    </table>

    <div class="fttr">
            <button type="button">首页</button>
            <button type="button">上一页</button>
<%--        <c:forEach begin="1" end="${pageInfo.totalPage}" var="pageNum">--%>
<%--            <li><a href="/user/findAll.do?currentPage=${pageNum}">${pageNum}</a></li>--%>
<%--        </c:forEach>--%>
            <button type="button">下一页</button>
            <button type="button">尾页</button>

    </div>


</div>

</body>
</html>
