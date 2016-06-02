// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require select2
//= require_tree .


$(document).foundation();
//= require turbolinks

// offcanvas nav preferences
$(document).foundation({
  offcanvas : {
    // Sets method in which offcanvas opens.
    // [ move | overlap_single | overlap ]
    open_method: 'move', 
    // Should the menu close when a menu link is clicked?
    // [ true | false ]
    close_on_click : true
  }
});

// Loading page
$(function() {
    // Animate loader off screen
    $("#loading_page").delay(1000).animate({
      top: -1000
    }, 200);
});


// Alert box settings
$(document).ready(function(){
  setTimeout(function(){
    // $('.alert-box').remove();
    $('.close').click();
  }, 2000);
 });


// BrandClub landing page header bg color
var $heading = $('#heading');
$(document).scroll(function() {
    $heading.css({background: $(this).scrollTop()>400 ? "#FA584F":"rgba(0,0,0,0)"});
});



// Social feed on load
$(document).ready(function(){
    if ((window.location.hash) != '' ) {
        $("#projects").hide();
        $("#articles").hide();
        $("#photos").hide();
        $("#students").hide();
        $(window.location.hash).show();
        $("html, body").animate({ scrollTop: 0 }, "slow");
        $(".news-feed-container").animate({ scrollTop: 0 }, "slow");
        $("#projects-user-link").removeClass("active-link");
        $("#students-user-link").removeClass("active-link");
        $("#articles-user-link").removeClass("active-link");
        $("#photos-user-link").removeClass("active-link");
        $(window.location.hash+"-user-link").addClass("active-link");
    };
});

// Social feed on rehash
$(window).on('hashchange',function(){ 
    if ((window.location.hash) != '' ) {
        $("#projects").hide();
        $("#articles").hide();
        $("#photos").hide();
        $("#students").hide();
        $(window.location.hash).show();
        $("html, body").animate({ scrollTop: 0 }, "slow");
        $(".news-feed-container").animate({ scrollTop: 0 }, "slow");
        $("#projects-user-link").removeClass("active-link");
        $("#students-user-link").removeClass("active-link");
        $("#articles-user-link").removeClass("active-link");
        $("#photos-user-link").removeClass("active-link");
        $(window.location.hash+"-user-link").addClass("active-link");
    };
});


//  Trying to disable domain box search clickable
$(function() {
    $("#DomainSearchBox").click(function(e) {
        e.preventDefault();
    });
});


// Taggable
$(document).ready(function() {
  $('input.taggable').each(function() {
    $(this).select2({
      tags: $(this).data('tags'),
      tokenSeparators: [',', ' ']
      });       
    });     
});