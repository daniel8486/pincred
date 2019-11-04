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
//= require jquery_ujs
//= require materialize-sprockets
//= require_tree .


// Carregador automatico do JQUERY 

$(document).on('turbolinks:load', function() { 

(function($){
    $(function(){
  
      $('.sidenav').sidenav();
      $('.parallax').parallax();
      
  
    }); // end of document ready
  })(jQuery); // end of jQuery name space

  $(document).ready(function(){
    $(".dropdown-trigger").dropdown();
  });

  $(document).ready(function(){
    $('select').formSelect();
  });

  $(document).ready(function() {
   
    //seleciona os elementos a com atributo name="modal"
    
    $('.material-icons right').click(function(e) {
    
    //cancela o comportamento padrão do link
    
    e.preventDefault();
    
     
    
    //armazena o atributo href do link
    
    var id = $(this).attr('href');
   
    //armazena a largura e a altura da tela
    
    var maskHeight = $(document).height();
    
    var maskWidth = $(window).width();
   
     
   
    //Define largura e altura do div#mask iguais ás dimensões da tela
    
    $('#mask').css({'width':maskWidth,'height':maskHeight});
    
     
    
    //efeito de transição
    
    $('#mask').fadeIn(1000);
    
    $('#mask').fadeTo("slow",0.8);
    
     
   
    //armazena a largura e a altura da janela
    
    var winH = $(window).height();
   
    var winW = $(window).width();
    
    //centraliza na tela a janela popup
    
    $(id).css('top',  winH/2-$(id).height()/2);
   
    $(id).css('left', winW/2-$(id).width()/2);
   
    //efeito de transição
   
    $(id).fadeIn(2000);
   
    });
   
     
   
    //se o botãoo fechar for clicado
    
    $('.window .close').click(function (e) {
    
    //cancela o comportamento padrão do link
    
    e.preventDefault();
   
    $('#mask, .window').hide();
    
    });
    
    //se div#mask for clicado
    
    $('#mask').click(function () {
    
    $(this).hide();
    
    $('.window').hide();
    
    });
    
    });

  
});

