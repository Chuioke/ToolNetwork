<%--
  Created by IntelliJ IDEA.
  User: gong'chao
  Date: 2023/5/23
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .footer {
        background-color: #f5f5f5;
        padding: 10px;
        text-align: center;
        color: #888888;
        font-size: 14px;
    }
    .footer p {
        text-align: center;
        font-size: 14px;
        color: #888;
    }

    .footer p:before, .footer p:after {
        content: "";
        display: inline-block;
        vertical-align: middle;
        width: 30px;
        height: 1px;
        background-color: #888;
        margin: 0 10px;
    }

    .footer p:before {
        margin-right: 20px;
    }

    .footer p:after {
        margin-left: 20px;
    }
</style>

<body>
    <div class="footer">
        <p>&copy;版权归工具网</p>
    </div>
</body>
</html>
