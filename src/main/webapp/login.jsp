<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/23
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/loginCss.css"/>
<body>
<div class="container">
    <img src="${pageContext.request.contextPath}/status/images/Title.png" class="logo" title="工具网" alt="工具网" width="50px" height="50px"/>
    <h1>Login</h1>
    <c:if test="${not empty message}">
        <p style="color: #f27474">${message}</p>
    </c:if>
    <form action="${pageContext.request.contextPath}/user/login" method="post" id="myForm">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="userName" required placeholder="请填写用户名">

        <label for="password">密码:</label>
        <input type="password" id="password" name="userPwd" required placeholder="请填写密码">

        <label for="verification">验证码:</label>
        <div class="form-row">
        <input type="text" id="verification" name="verification" required><span class="verification-icon"></span>
        <img src="${pageContext.request.contextPath}/captcha" alt="验证码" id="ka"/><img src="${pageContext.request.contextPath}/status/images/reset.png" id="reset" alt="刷新" title="刷新"/>
        </div>
        <div class="button-container">
            <input type="button" id="login" value="登录">
            <input type="button" value="注册" id="registerButton" title="没有账号请进行注册">
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/status/jsp/pwsd.jsp" class="password-link">找回密码</a>
    <input type="hidden" value="${pageContext.request.contextPath}" id="contextPath">
</div>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/login.js"></script>
</body>
</html>
