<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/23
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/toollistCss.css">
<body>
<header>
    <div class="logo">
        <img src="${pageContext.request.contextPath}/status/images/Title.png" alt="工具网" title="工具网">
        <span
        >工具网</span>
    </div>
    <nav>
        <ul class="links">
            <li><a href="#">首页</a></li>
            <li><a href="#">公告</a></li>
            <li><a href="#">团队</a></li>
            <li><a href="${pageContext.request.contextPath}/status/jsp/settings.jsp">我的</a></li>
        </ul>
        <div class="action-links">
            <a href="#" class="publish-button">发布</a>
        </div>
    </nav>
</header>
<section class="lb">
    <div class="tool-container">
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg')"><button class="browse-button">浏览</button></div>
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景02.jpg')"><button class="browse-button">浏览</button></div>
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景03.jpg')"><button class="browse-button">浏览</button></div>
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景04.jpg')"><button class="browse-button">浏览</button></div>
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg')"><button class="browse-button">浏览</button></div>
        <div class="tool" style="background-image: url('${pageContext.request.contextPath}/status/images/浏览展示背景02.jpg')"><button class="browse-button">浏览</button></div>
    </div>
</section>
<main>
    <nav class="vertical-nav">
        <ul>
            <li><a href="javascript:void(0)">管理员闲时作品</a></li>
            <li><a href="javascript:void(0)">作品随机刷新</a></li>
            <li><a href="javascript:void(0)">休闲娱乐</a></li>
            <li><a href="javascript:void(0)">办公利器</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
            <li><a href="javascript:void(0)">敬请期待</a></li>
        </ul>
    </nav>
    <div class="jsp-include-container">
        <jsp:include page="toolTrue.jsp"/>
    </div>
    <div class="clearfix"></div>
    <jsp:include page="/status/jsp/foot.jsp"/>
</main>
<input type="hidden" id="contextPath" value="${pageContext.request.contextPath}">
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/toollist.js"></script>
</html>
