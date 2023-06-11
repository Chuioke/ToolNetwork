<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/28
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/setPwdCss.css"/>
<body>
<div class="containerPwd">
  <h2>Change Password</h2>
  <form id="myForm01">
    <div class="form-group">
      <label class="labelL" for="oldPassword">旧密码：</label>
      <input type="password" id="oldPassword" name="oldPassword" required>
    </div>
    <div class="form-group">
      <label class="labelL" for="newPassword">新密码：</label>
      <input type="password" id="newPassword" name="newPassword" required>
    </div>
    <div class="form-group">
      <a href="#" class="forgot-password">忘记密码？</a>
    </div>
    <div class="form-group">
      <button type="submit">Change Password</button>
    </div>
  </form>
  <form action="" id="myForm02" style="display: none">
        <div class="form-group">
          <label class="labelL" for="verificationCode">邮箱：</label>
          <input type="text" id="verificationCode" name="verificationCode" required>
            <a href="#">发送</a>
        </div>
        <div class="form-group">
          <label class="labelL" for="emailCode">邮箱验证码：</label>
          <input type="text" id="emailCode" name="verificationCode" required>
        </div>
      <div class="form-group">
        <button type="submit">验证</button>
      </div>
      <a href="javascript:void(0)" class="password-link" style="display: none">返回</a>
  </form>
  <div class="additional-info">
    本月修改次数：512(限3次)
  </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/setPwd.js"></script>
</html>
