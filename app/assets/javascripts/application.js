// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
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
//= require Chart
$(function(){
  $(document).foundation();
});

$(document).ready(function () {
  $('#return-to-top').click(function() {
    $('body,html').animate({
        scrollTop : 0
    }, 500);
  });

  $(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {
        $('#return-to-top').fadeIn(200);
    }
    else {
        $('#return-to-top').fadeOut(200);
    }
  });

});

function setData(positions, total_votes, male_votes, female_votes) {
  console.log(positions);
  console.log(total_votes);
  console.log(male_votes);
  console.log(female_votes);
}

//= require turbolinks
//= require_tree .
