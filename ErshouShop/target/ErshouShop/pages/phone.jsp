
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品信息</title>
    <link rel="stylesheet" href="../css/Phone.css">
<%--    <link rel="stylesheet" href="./assets/iconfont/iconfont.css">--%>
</head>
<body>
<div class="back">
    <button  onclick="history.back(-1);"><a href="#" style="color: white; font-size: 13px ">返回</a></button>
</div>


<div class='container' id='container'>
    <div class="img-container ">
        <!-- 商品图片 -->
        <img class="product_img" src="../images/MZ/1.JPG">
    </div>
    <div class="info-container ">
        <!-- 商品信息 -->
        <span class="what_info">型号：</span>
        <input type="hidden" th:value="${shopInformation.id}" class="id"/>
        <span class="info_content" th:text="${shopInformation.name}">魅族17pro</span><br/> //魅族17pro等字样只做暂时展示用，真正的信息在标签中由后端传入
        <span class="what_info">价格：</span>
        <span class="info_content" th:text="'$'+${shopInformation.price}">3998.00</span><br/>
        <span class="what_info">处理器：</span>
        <span class="info_content" th:text="${shopInformation.remark}">骁龙865</span><br/>
        <span class="what_info">屏幕：</span>
        <span class="info_content" th:text="${shopInformation.remark}">三星Amoled高清屏</span><br/>
        <span class="what_info">规格：</span>
        <span class="info_content" th:text="${sort}">8G+256G</span><br/>
<%--        <button class="buy_button" th:value="${shopInformation.id}">加入购物车</button>--%>
    </div>

</div>
</body>

</html>
