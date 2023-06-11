<%@ page contentType="text/html;charset=utf-8"%>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/status/css/indexCss.css">
<title>工具网</title>
<body>
<header>
    <nav>
        <ul>
            <li><img src="${pageContext.request.contextPath}/status/images/Title.png" title="工具网" width="50px" height="50px" alt="工具网"></li>
            <li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
            <li><a href="#too" class="scroll">工具列表</a></li>
            <li><a href="#moi" class="scroll">用户评价</a></li>
            <li><a href="javascript:void(0)" id="contact-btn">联系我们</a></li>
        </ul>
    </nav>
    <div class="hero">
        <h1>提供实用工具和资源</h1>
        <p>我们致力于为您提供各种实用工具，帮助您更高效地办公、学习和生活。</p>
        <a href="javascript:void(0)" class="cta-button">立即使用</a>
    </div>
</header>

<main>
    <section class="features">
        <h2>我们的工具特点</h2>
        <ul>
            <li>简单易用，节省时间</li>
            <li>多种实用工具可供选择</li>
            <li>帮助提升工作和学习效率</li>
        </ul>
    </section>
    <section class="tools" id="too">
        <div class="tool-card">
            <img src="${pageContext.request.contextPath}/status/images/浏览展示背景01.jpg" alt="Tool 1" class="tool-image">
            <h3>工具名称 1</h3>
            <p>这是一个实用的工具，可以帮助您完成某项任务。</p>
            <a href="javascript:void(0)" class="use-button">立即使用</a>
        </div>

        <div class="tool-card">
            <img src="${pageContext.request.contextPath}/status/images/浏览展示背景02.jpg" alt="Tool 2" class="tool-image">
            <h3>工具名称 2</h3>
            <p>这是另一个实用的工具，适用于不同的情境。</p>
            <a href="javascript:void(0)" class="use-button">立即使用</a>
        </div>

        <div class="tool-card">
            <img src="${pageContext.request.contextPath}/status/images/浏览展示背景03.jpg" alt="Tool 3" class="tool-image">
            <h3>工具名称 3</h3>
            <p>这是另一个实用的工具，可以帮助您解决特定问题。</p>
            <a href="javascript:void(0)" class="use-button">立即使用</a>
        </div>
        <div class="slide-button">
            <span>&gt;</span>
        </div>
        <div class="notification" style="display: none">
            <span>请登录查看更多工具</span>
        </div>
    </section>
    <hr>
    <section class="testimonials" id="moi">
        <h2>用户评价</h2>
        <div class="testimonial">
            <p>使用工具网之后，我能更快地完成工作任务，节省了大量时间和精力。</p>
            <p class="customer-name">- 张三</p>
        </div>
        <div class="testimonial">
            <p>我非常喜欢工具网提供的实用工具，它们为我的工作和学习带来了很大的便利。</p>
            <p class="customer-name">- 李四</p>
        </div>
    </section>
    <section class="cta-section">
        <h2>立即使用</h2>
        <p>现在就使用我们的实用工具，让您的工作更轻松、更高效。</p>
        <a href="javascript:void(0)" class="cta-button">立即使用</a>
    </section>
</main>
<input type="hidden" id="contextPath" value="${pageContext.request.contextPath}">
<jsp:include page="/status/jsp/foot.jsp"/>
<div id="contact-div" style="display: none;">
    <h2>联系我们</h2>
    <p>请加入管理员QQ群获取进一步的帮助和支持</p>
    <p>QQ群：749338788</p>
</div>
</body>
<script src="${pageContext.request.contextPath}/status/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/status/js/Zindex.js"></script>
</html>
