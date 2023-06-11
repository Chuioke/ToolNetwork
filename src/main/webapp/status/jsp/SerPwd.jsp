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
  <h2>Register</h2>
  <form id="myForm01">
    <div class="form-group">
      <label class="labelL" for="oldPassword">密码：</label>
      <input type="password" id="oldPassword" name="oldPassword" required>
    </div>
    <div class="form-group">
      <label class="labelL" for="newPassword">确认密码：</label>
      <input type="password" id="newPassword" name="newPassword" required>
    </div>
    <div class="form-group">
      <button type="submit">重置</button>
    </div>
  </form>
  <div class="additional-info">
    本月修改次数：512(限3次)
  </div>
</div>
</body>
</html>
