// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require jquery.purr
//= require best_in_place
//= require jquery.pjax
//= require twitter/bootstrap/bootstrap-transition
//= require twitter/bootstrap/bootstrap-alert
//= require twitter/bootstrap/bootstrap-modal
//= require twitter/bootstrap/bootstrap-dropdown
//= require twitter/bootstrap/bootstrap-scrollspy
//= require twitter/bootstrap/bootstrap-tab
//= require twitter/bootstrap/bootstrap-tooltip
//= require twitter/bootstrap/bootstrap-popover
//= require twitter/bootstrap/bootstrap-button
//= require twitter/bootstrap/bootstrap-collapse
//= require twitter/bootstrap/bootstrap-carousel
//= require twitter/bootstrap/bootstrap-typeahead
//= require bootstrap
//// require_tree .


$(function() {
	$("#bits_search input").keyup(function() {
		$("#bits_from_search").fadeOut();
		$.get($("#bits_search").attr("action"), $("#bits_search").serialize(), null, "script");
		return false;
	});


$('div.btn-group').each(function(){
    var group   = $(this);
    var form    = group.parents('form').eq(0);
    var name    = group.attr('data-toggle-name');
    var hidden  = $('input[name="' + name + '"]', form);
    $('button', group).each(function(){
      var button = $(this);
      button.on('click', function(){
        $(this).parent().children().removeClass('active');
        hidden.val($(this).val());
        hidden.trigger('change');
        $(this).addClass('active')
      });
      if(button.val() == hidden.val()) {
        button.addClass('active');
      }
    });
  });
});