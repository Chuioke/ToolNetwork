<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/27
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/settingCss.css">
<body>
<div class="container">
  <div class="sidebar">
    <ul>
      <li><a href="#">用户信息</a></li>
      <li><a href="#">修改密码</a></li>
      <li><a href="#">浏览记录</a></li>
      <li><a href="#">购买记录</a></li>
      <li><a href="#">使用记录</a></li>
      <li><a href="#">收藏</a></li>
    </ul>
  </div>
  <div class="content">
    <jsp:include page="/status/jsp/SerPwd.jsp"/>
  </div>
</div>
</body>
</html>
