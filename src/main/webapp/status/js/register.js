$(document).ready(function() {
    // 验证用户名
    function validateUsername() {
        let userName = $("#username").val();
        if(userName.length < 5) {
            $("#username + span").css({"color":"red","font-size":"22px"}).html("×");
            return false;
        } else {
            $("#username + span").css({"color":"green","font-size":"22px"}).html("✓");
            return true;
        }
    }

    // 验证密码
    function validatePassword() {
        let password = $("#password").val();
        let hasUpperCase = /[A-Z]/.test(password);
        let hasNumber = /[0-9]/.test(password);
        let lengthValid = password.length >= 10;

        if(hasUpperCase && hasNumber && lengthValid) {
            $("#password + span").css({"color":"green","font-size":"22px"}).html("✓");
            return true;
        } else {
            $("#password + span").css({"color":"red","font-size":"22px"}).html("×");
            return false;
        }
    }

    // 验证确认密码
    function validateRePassword() {
        let password = $("#password").val();
        let rePassword = $("#RePassword").val();
        let hasUpperCase = /[A-Z]/.test(password);
        let hasNumber = /[0-9]/.test(password);
        let lengthValid = password.length >= 10;

        if(rePassword == password && hasUpperCase && hasNumber && lengthValid) {
            $("#RePassword + span").css({"color":"green","font-size":"22px"}).html("✓");
            return true;
        } else {
            $("#RePassword + span").css({"color":"red","font-size":"22px"}).html("×");
            return false;
        }
    }

    // 验证验证码
    function validateVerification() {
        let contextPath = $("#contextPath").val();
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


    $("#username").blur(function (){
        validateUsername();
    })
    $("#password").blur(function (){
        validatePassword();
    })
    $("#RePassword").blur(function (){
        validateRePassword();
    })
    $("#verification").blur(function (){
        validateVerification();
    })
    $("#email").blur(function (){
        emailVa();
    })

    // 注册按钮点击事件
    $("#registerButton").click(function() {
        let usernameValid = validateUsername();
        let passwordValid = validatePassword();
        let rePasswordValid = validateRePassword();
        let aemailVa = emailVa();
        // let verificationValid = $("#verification + span").css("color") === "rgb(0, 128, 0)";
        // alert(usernameValid+"_"+passwordValid+"_"+rePasswordValid+"_"+verificationValid);
        let verificationValid =$("#verification + span").hasClass("valid");
        if (usernameValid && passwordValid && rePasswordValid && verificationValid && aemailVa) {
            // 所有验证通过，执行注册逻辑
            $("#myForm").submit();
        }
    })
})