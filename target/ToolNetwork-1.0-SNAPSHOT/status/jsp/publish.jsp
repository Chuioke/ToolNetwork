<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/29
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/publish.css">
<body>
<div class="container">
    <form action="#">
        <div class="upload-container">
            <label class="upload-button">
                <input id="fileCh" type="file" style="display: none;">
            </label>
            <span id="file-name">选择文件</span>
            <p class="image-note"><strong>注：</strong>请点击上传展示图片</p>
        </div>
        <div class="instructions">请在下方填写详细的使用说明</div>
        <textarea id="tinymce-editor"></textarea>
        <button id="publish-button">发布</button>
    </form>
</div>
</body>
<script src="${pageContext.request.contextPath}/status/tinymce/tinymce.js"></script>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/publish.js"></script>
</html>
