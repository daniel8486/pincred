// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require sweetalert
//= require bootstrap/dist/js/bootstrap 
//= require popper.js/dist/popper
//= require_tree.


// Carregador automatico do JQUERY 

$(document).ready(function() {
  var scrollTop = 0;
  $(window).scroll(function() {
      scrollTop = $(window).scrollTop();
      $('.counter').html(scrollTop);

      if (scrollTop >= 25) {
          $('#menu_principal').addClass('fixed-top');
      } else if (scrollTop < 25) {
          $('#menu_principal').removeClass('fixed-top');
      }
  });
});

//smoothscroll
$('a[href^="#"]').on('click', function(e) {
  e.preventDefault();
  $(document).off("scroll");

  $('a').each(function() {
      $(this).removeClass('active');
  })
  $(this).addClass('active');

  var target = this.hash,
      teste = target;
  $target = $(target);
  $('html, body').stop().animate({
      'scrollTop': $target.offset().top + 1
  }, 500, 'swing', function() {
      window.location.hash = target;
      $(document).on("scroll");
  });
});

