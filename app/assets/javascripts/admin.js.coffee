jQuery ->
  $('body').addClass("admin")
  $('#bits_episode').sortable
    axis: 'y'
    handle:'.bitsort'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))