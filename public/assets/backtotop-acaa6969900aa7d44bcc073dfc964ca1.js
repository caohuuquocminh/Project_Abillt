$(".back-to-top").css({display:"none"}),jQuery(document).ready(function(){var o=250,t=300;jQuery(window).scroll(function(){jQuery(this).scrollTop()>o?jQuery(".back-to-top").fadeIn(t):jQuery(".back-to-top").fadeOut(t)}),jQuery(".back-to-top").click(function(o){return o.preventDefault(),jQuery("html, body").animate({scrollTop:0},t),!1})});