$(function (){
    $(".forgot-password").click(function (){
        $("#myForm01").slideUp();
        $("#myForm02").slideDown(function (){
            $(".password-link").css("display","block");
        });
    })
    $(".password-link").click(function (){
        $("#myForm02").slideUp(function (){
            $(".password-link").css("display","none");
        });
        $("#myForm01").slideDown();
    })
})