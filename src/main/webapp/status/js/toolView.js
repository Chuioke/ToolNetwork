$(document).ready(function() {
    $(document).ready(function() {
        $(".publish-button").click(function() {
            $("#comment-input").slideDown(500, function() {
                $('html, body').animate({
                    scrollTop: $("#comment-input").offset().top
                }, 500);
            });
        });
    });
});