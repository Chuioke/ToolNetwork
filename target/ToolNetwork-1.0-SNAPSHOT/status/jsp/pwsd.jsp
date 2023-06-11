<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/24
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>找回密码</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/pwsdCss.css">
<body>
<div class="container">
    <img src="${pageContext.request.contextPath}/status/images/Title.png" class="logo" title="工具网" alt="工具网" width="40px" height="40px"/>
    <h1>Recover the password</h1>
    <div class="progress-bar">
        <div class="progress-circle">❓</div>
        <div class="progress-label">未发送邮件验证码</div>
    </div>
    <form action="javascript:void(0)" method="post" id="myForm01">
        <label for="email">请输入注册时使用的邮箱:</label>
        <input type="email" id="email" name="email" required><span></span>
        <label for="verification">验证码:</label>
        <div class="form-row">
            <input type="text" id="verification" name="verification" required><span class="verification-icon"></span>
            <img src="${pageContext.request.contextPath}/captcha" alt="验证码" id="ka"/><img src="${pageContext.request.contextPath}/status/images/reset.png" id="reset" alt="刷新" title="刷新"/>
        </div>
        <div class="button-container">
            <input type="button" value="发送邮箱验证码" id="robackButton">
        </div>
    </form>
    <form action="${pageContext.request.contextPath}/status/jsp/toollistHead.jsp" method="post" id="myForm02" style="display: none">
        <label for="email">请输入邮箱验证码:</label>
        <input type="email" name="email" id="emNum" required>
        <div class="button-container">
            <input type="button" value="确定">
        </div>
    </form>
    <a href="javascript:void(0)" class="password-link" style="display: none">重新发送</a>
</div>
<input type="hidden" id="contextPath" value="${pageContext.request.contextPath}">
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/pwsd.js"></script>
</html>

