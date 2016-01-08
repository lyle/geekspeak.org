// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require jquery-ui
//= require jquery.purr
//= require best_in_place
//= require jquery.pjax
//= require jquery.slabtext.min.js

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
$(function(){ $(document).foundation();

 $("h4").slabText({
            // Don't slabtext the headers if the viewport is under 380px
            "viewportBreakpoint":380,
            "maxFontSize":64
        });

});
