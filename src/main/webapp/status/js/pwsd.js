$(function (){
    let contextPath = $("#contextPath").val();
    function emailVa(){
        let email = $("#email").val();
        let reg = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
        if(reg.test(email)){
            //邮箱正确
            $("#email + span").css({"color":"green","font-size":"22px"}).html("✓");
            return true;
        }else{
            $("#email + span").css({"color":"red","font-size":"22px"}).html("×");
            return false;
        }
    }
    function validateVerification() {
        let verification = $("#verification").val();
        $.ajax({
            type: "post",
            url: contextPath + "/verification",
            data: {verification: verification},
            dataType: "text",
            success: function (data) {
                if (data == "false") {
                    $("#verification + span").removeClass("valid").addClass("invalid").css({"color":"red","font-size":"22px"}).html("×");
                } else {
                    $("#verification + span").removeClass("invalid").addClass("valid").css({"color":"green","font-size":"22px"}).html("✓");
                }
            },async:false
        });
    }

    // 绑定点击事件
    $("#reset").on("click", function() {
        refreshCaptcha();
    });

    // 刷新验证码函数
    function refreshCaptcha() {
        let contextPath = $("#contextPath").val();
        let captchaImage = $("#ka");
        let captchaUrl = contextPath + "/captcha?" + new Date().getTime();
        captchaImage.attr("src", captchaUrl);
        $("#verification + span").removeClass("valid").addClass("invalid").css({"color":"red","font-size":"22px"}).html("×");
    }

    function sub (){
        jzdh();
        let Email = $("#email").val();
        // alert(Email)
        $.ajax({
            type: "post",
            url: contextPath + "/verCon",
            data: {email:Email},
            dataType: "text",
            success: function (data) {
                if (data == "success") {
                    $(".progress-circle").html("✔").css({"color":"green","font-size":"25px"});
                    $(".progress-label").html("发送邮件成功");
                } else {
                    $(".progress-circle").html("✘").css({"color":"red","font-size":"25px"});
                    $(".progress-label").html("发送邮件失败");
                }
            }
        });
    }

    function Getsub (){
        let emNum = $("#emNum").val();
        $.ajax({
            type: "post",
            url: contextPath + "/GetVercon",
            data: {email:emNum},
            dataType: "text",
            success: function (data) {
                if (data == "false") {
                    $("#emNum").css("border-color","red");
                    $("#myForm02 label").html("邮箱验证码有误").css("color","red");
                } else {
                    $("#myForm02").submit();
                }
            }
        });
    }


    $("#email").blur(function (){
        emailVa();
    })
    $("#verification").blur(function (){
        validateVerification();
    })

    function jzdh(){
        let loadingAnimation = setInterval(function() {
            let progressText = $(".progress-label").text();
            if (progressText === "发送邮件成功" || progressText === "发送邮件失败") {
                clearInterval(loadingAnimation);
            } else {
                if (progressText === "......") {
                    $(".progress-label").text(".");
                } else if (progressText === "..") {
                    $(".progress-label").text("...");
                } else if(progressText === "..."){
                    $(".progress-label").text("....");
                }else if(progressText === "...."){
                    $(".progress-label").text(".....");
                }else if(progressText === "....."){
                    $(".progress-label").text("......");
                }else if(progressText === ".") {
                    $(".progress-label").text("..");
                }else{
                    $(".progress-label").text(".");
                }
            }
        }, 500);
    }




    $("#robackButton").click(function (){
        let aeemali=emailVa();
        let ver = $("#verification + span").hasClass("valid");
        if(aeemali && ver){
            // alert(1);
            sub();
            $("#myForm01").slideUp();
            $("#myForm02").slideDown(function (){
                $(".password-link").css("display","block");
            });
        }
    });
    $(".password-link").click(function (){
        $("#myForm02").slideUp(function (){
            $(".password-link").css("display","none");
        });
        $("#myForm01").slideDown(function (){
            refreshCaptcha();
        });
    })
    $("#myForm02 .button-container input").click(function (){
        Getsub();
    })
})