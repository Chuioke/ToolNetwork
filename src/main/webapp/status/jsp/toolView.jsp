<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/29
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/toolView.css">
<body>
<div class="container">
    <a href="javascript:void(0)" class="collect-button">收藏</a><span></span>
    <div id="image">
        <img src="${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg" alt="展示图片">
    </div>
    <div id="details">
        <p>发布人: John Doe</p>
        <p>发布时间: 2023-05-29</p>
        <p>最近修改时间: 2023-05-29</p>
    </div>

    <div id="html-content">
        <!-- 在这里放置TinyMCE编译后的HTML页面 -->
        <p>这里是您的TinyMCE编译后的HTML内容。</p>
    </div>
    <a href="#" class="back-button">返回</a>

    <div id="user-comments">
        <h2>用户评论</h2>
        <div id="comment-container">
            <div class="comment">
                <p>评论1：这是第一条评论。</p>
            </div>
            <div class="comment">
                <p>评论2：这是第二条评论。</p>
            </div>
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
            <!-- 添加更多的评论 -->
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
            <div class="comment">
                <p>评论3：这是第三条评论。</p>
            </div>
        </div>
        <div id="comment-input" style="display: none">
            <textarea id="comment-textarea" placeholder="在此输入评论"></textarea>
            <button id="publish-button">发布</button>
        </div>
        <a href="javascript:void(0)" class="publish-button">发布评论</a>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/toolView.js"></script>
</html>
