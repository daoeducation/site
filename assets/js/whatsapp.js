$(document).ready(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() >= 0) {
            $('#whatsapp').fadeIn();
        } else {
            $('#whatsapp').fadeOut();
        }
    });
});
