jQuery ->
  $('body').addClass("admin")
  $('#bits_episode').sortable
    axis: 'y'
    handle:'.bitsort'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  $('.best_in_place').best_in_place()
  $('.best_in_place').bind
    ajax:success: ->
      $(this).effect('highlight')
      alert('dd')