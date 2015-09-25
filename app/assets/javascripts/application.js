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

  var width = $('.thumbnail-circle').width();
  $('.thumbnail-circle').css({'height':width+'px'});
});

function setData(positions, candidates, total_votes, male_votes, female_votes) {
  var api_data = {
    positions: positions,
    candidates: candidates,
    total: total_votes,
    male: male_votes,
    female: female_votes,
  };

  return api_data;
}

//= require turbolinks
//= require_tree .
