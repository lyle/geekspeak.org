jQuery ->
  $("[title][data-content]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
	$(".bit a.icon-asterisk").hover(-> $(this).toggleClass('icon-white') )
	    