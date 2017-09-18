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
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {

  $("#books .sortable, #books .pagination a").on("click", function(){
    $.getScript(this.href);
    return false;
  });

  $("#books_search").submit(function(){
    $.get(this.action, $(this).serialize(), null, "script");
    return false;
  });

  $(".term_search").on("keyup", function(){
    var string = $(this).val().toLowerCase();
    $(this).val(string);
  });

  $("#users td .change_admin").on("click", function(){
    $.getScript(this.href);
    $("#is_admin").html() == "Sim" ? $("#is_admin").html("Não") : $("#is_admin").html("Sim")
    return false;
  });
});
