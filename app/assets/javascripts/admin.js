(function() {

  jQuery(function() {
    $.ajaxSetup({
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });
    $('body').addClass("admin");
    var toggleSort = $('<button class="btn sort-bits"><i class="icon-resize-vertical"></i> Sort Bits</button>').on('click',
      function(event) {
        $(this).toggleClass('active')
        $("#bits_episode").toggleClass('minimize')
      });
    $('#bits_episode').sortable({
      axis: 'y',
      handle: '.bitsort',
      update: function() {
        return $.post($(this).data('update-url'), $(this).sortable('serialize'),
                    function(){
                      $('#bits_episode').effect('highlight', {color:'green'});
                    })
      }
    }).before(toggleSort);
    $('.best_in_place').best_in_place();
    $('.best_in_place').bind("ajax:success",function() {
        return $(this).parent().effect('highlight', {color:'green'});
    });

  });

}).call(this);
