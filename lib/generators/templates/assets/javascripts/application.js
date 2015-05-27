// PlugIns
//= require materialize-sprockets
//= require nprogress
//= require nprogress-turbolinks

// Project files
//= require_tree .

$(function() {
    $('.slider').slider();
    $(".button-collapse").sideNav();
    $('.nav_actions a').scrollTo({
        speed: 500
    });
});