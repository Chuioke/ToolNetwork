$(document).ready(function() {
    let contextPath = $("#contextPath").val();
    let contactLink = $('#contact-btn');
    let contactDiv = $('#contact-div');
    contactLink.on('click', function(e) {
        e.preventDefault();
        contactDiv.fadeIn();
    });
    $(document).on('click', function(e) {
        let target = $(e.target);
        if (!target.is(contactLink) && !target.is(contactDiv)) {
            contactDiv.fadeOut();
        }
    });
    $('nav ul li a').hover(
        function() {
            $(this).css('color', 'red'); // 鼠标移入时改变字体颜色为红色
        },
        function() {
            $(this).css('color', ''); // 鼠标移出时恢复原始字体颜色
        });
    $(".cta-button,.use-button").click(function (){
        window.location.href=contextPath+"/login.jsp";
    });
    $(".scroll").click(function (event){
        event.preventDefault();//阻止默认的跳转行为
        // alert(1)
        let target = $(this).attr("href");
        let offsetTop = $(target).offset().top;
        $("html,body").animate({
                scrollTop:offsetTop
            },1000
        );
    });

    $('.slide-button').on('click', function() {
        // 获取当前.tool-card元素的left值
        let currentLeft = parseInt($('.tool-card').css('left'));
        // 计算目标的left值
        let targetLeft = currentLeft - 200;
        // 执行动画效果
        $('.tool-card').animate({ left: targetLeft }, 'slow', function() {
            // 动画执行完毕后显示.notification
            $('.notification').show();
        });
    });

    // 鼠标悬浮在.slide-button上时，将光标样式设置为手型
    $('.slide-button').hover(function() {
        $(this).css('cursor', 'pointer');
    }, function() {
        $(this).css('cursor', 'default');
    });
});