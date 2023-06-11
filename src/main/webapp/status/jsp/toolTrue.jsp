<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/27
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/tooltrueCss.css">
<body>
<div class="header">
    <input type="text" class="search-box" placeholder="请输入工具名称">
    <button class="search-button">搜索</button>
</div>
<div class="main">
    <div class="toolzs">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg" alt="工具1" class="toolzs-image">
        <h3>工具1</h3>
        <p>工具1的描述</p>
    </div>
    <div class="toolzs">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景02.jpg" alt="工具2" class="toolzs-image">
        <h3>工具2</h3>
        <p>工具2的描述</p>
    </div>
    <div class="toolzs">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景03.jpg" alt="工具3" class="toolzs-image">
        <h3>工具3</h3>
        <p>工具3的描述</p>
    </div>
    <div class="toolzs">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景04.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
    <div class="toolzs">
        <img src="tool6.jpg" alt="工具4" class="toolzs-image">
        <h3>工具4</h3>
        <p>工具4的描述</p>
    </div>
</div>
<input type="hidden" id="contextPath" value="${pageContext.request.contextPath}">
<button id="back-to-top-button">&#9650;</button>
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/toolTrue.js"></script>
</html>
