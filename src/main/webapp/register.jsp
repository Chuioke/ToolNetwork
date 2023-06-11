<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/23
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/registerCss.css"/>
</head>
<body>
<div class="container">
    <img src="${pageContext.request.contextPath}/status/images/Title.png" class="logo" title="工具网" alt="工具网" width="50px" height="50px"/>
    <h1>Register</h1>
    <form action="${pageContext.request.contextPath}/status/jsp/toollistHead.jsp" method="post" id="myForm">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" required placeholder="用户名必须5个字符以上"><span></span>

        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required placeholder="密码长度必须为10位以上且至少一个大写字母"><span></span>

        <label for="password">确认密码:</label>
        <input type="password" id="RePassword" name="RePassword" required><span></span>

        <label for="password">邮箱:</label>
        <input type="email" id="email" name="email" required><span></span>

        <label for="verification">验证码:</label>
        <div class="form-row">
            <input type="text" id="verification" name="verification" required><span class="verification-icon"></span>
            <img src="${pageContext.request.contextPath}/captcha" alt="验证码" id="ka"/><img src="${pageContext.request.contextPath}/status/images/reset.png" id="reset" alt="刷新" title="刷新"/>
        </div>
        <div class="button-container">
            <input type="button" value="注册" id="registerButton">
        </div>
    </form>
    <input type="hidden" value="${pageContext.request.contextPath}" id="contextPath">
</div>
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/register.js"></script>
</html>