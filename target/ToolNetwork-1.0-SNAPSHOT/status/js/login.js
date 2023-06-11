$(document).ready(function() {
    let contextPath = $("#contextPath").val();
    $("#registerButton").click(function (){
        window.location.href=contextPath+'/register.jsp';
    })

    // 获取刷新图片元素
    let resetImage = $("#reset");
    // 绑定点击事件
    resetImage.on("click", function() {
        refreshCaptcha();
    });

    // 刷新验证码函数
    function refreshCaptcha() {
        // 获取验证码图片元素
        let captchaImage = $("#ka");
        // 生成新的验证码URL
        let captchaUrl = contextPath + "/captcha?" + new Date().getTime();
        // 更新验证码图片的src属性
        captchaImage.attr("src", captchaUrl);
        $("#verification + span").removeClass("valid").addClass("invalid").css({"color":"red","font-size":"22px"}).html("×");
    }

    function vii(){
        $.ajax({
            type:"post",
            url:contextPath+"/verification",
            data:{verification:$("#verification").val()},
            dataType:"text",
            success:function (data){
                // console.log(data)
                if(data=="false"){
                    $("#verification + span").removeClass("valid").addClass("invalid").css({"color":"red","font-size":"22px"}).html("×");
                }else{
                    $("#verification + span").removeClass("invalid").addClass("valid").css({"color":"green","font-size":"22px"}).html("✓");
                }
            },async:false
        })
    }

    $("#verification").blur(function (){
        vii()
    })
    $("#login").click(function (){
        let userName = $("#username").val();
        let userPwd = $("#password").val();
        // 检查验证结果
        // let isValid = $("#verification + span").css("color") === "rgb(0, 128, 0)";
        let isValid = $("#verification + span").hasClass("valid");
        // console.log(isValid)
        if (isValid && userName!="" && userPwd!="") {
            $("#myForm").submit();
        }
    })
});
