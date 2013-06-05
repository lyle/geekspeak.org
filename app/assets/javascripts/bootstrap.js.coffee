jQuery ->
	$("[title][data-content]").popover()
	$(".tooltip").tooltip()
	$("a[data-toggle=tooltip]").tooltip()
	$(".bit a.icon-asterisk").hover(-> $(this).toggleClass('icon-white') )
	
	#$('.bit-used-filter button').button().click -> console.log(this)
	$("#bits_search").submit ->
		
	$('.bit-used-filter input[type=hidden]').change ->
		$("#bits_from_search").fadeOut()
		$.get($("#bits_search").attr("action"), $("#bits_search").serialize(), null, "script")
