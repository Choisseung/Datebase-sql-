<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" href="css/login_page.css">
</head>
<body>
<div class='container' id='container'>


    <div class="form-container sign-up-container">
        <!-- 注册 -->
        <form action="#">
            <h1>注册</h1>
            <input type="text" placeholder="用户名">
            <input type="email" placeholder="手机号">
            <input type="password" placeholder="密码">
            <input type="password" placeholder="确认密码">
            <button>注册</button>
        </form>
    </div>



    <div class="form-container sign-in-container">
        <!-- 登陆 -->
        <form action="/user/login.do" method="post">
            <h1>登录</h1>
            <input type="text" name="username" placeholder="用户名">
            <input type="password" name="password" placeholder="密码">
            <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
        </form>
    </div>

    <!-- 侧边栏内容 -->
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>已有帐号？</h1>
                <p>去登陆交易平台。</p>
                <button class='ghost' id="signIn">登录</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>没有帐号？</h1>
                <p>去注册一个吧。</p>
                <button class='ghost' id="signUp">注册</button>
            </div>
        </div>
    </div>


</div>
</body>
<script src="login_page.js"></script>
</html>
