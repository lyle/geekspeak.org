jQuery ->
  $("a[rel=popover]").popover()
  $("a[rel=tooltip]").tooltip()
  $(".tooltip").tooltip()
  #$('.bit-used-filter button').button().click -> console.log(this)
  $("#bits_search").submit ->
  $('.bit-used-filter input[type=hidden]').change ->
      $("#bits_from_search").fadeOut()
      $.get($("#bits_search").attr("action"), $("#bits_search").serialize(), null, "script")