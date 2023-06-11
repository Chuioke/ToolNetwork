<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/28
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/userView.css">
<body>
<div class="containerUser">
  <div class="user-info">
    <h2>User Information</h2>
    <div class="info-row">
      <span class="label">Username:</span>
      <span class="value">John Doe</span>
    </div>
    <div class="info-row">
      <span class="label">Password:</span>
      <span class="value">130***2299**</span>
    </div>
    <div class="info-row">
      <span class="label">Email:</span>
      <span class="value">johndoe@example.com</span>
    </div>
  </div>

  <div class="statistics">
    <div class="stat">
      <div class="circle">
        <div class="arc"></div>
        <span class="count">123</span>
        <span class="stat-label">浏览次数</span>
      </div>
    </div>
    <div class="stat">
      <div class="circle">
        <div class="arc"></div>
        <span class="count">456</span>
        <span class="stat-label">下载次数</span>
      </div>
    </div>
    <div class="stat">
      <div class="circle">
        <div class="arc"></div>
        <span class="count">789</span>
        <span class="stat-label">购买次数</span>
      </div>
    </div>
  </div>
</div>
</body>
</html>
