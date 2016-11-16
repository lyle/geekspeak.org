// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui/sortable
//= require jquery-ui/effect-highlight
//= require foundation
//= require best_in_place
//= require best_in_place.jquery-ui

//= require_tree .

      $(document).foundation();
$(function(){

    $(".episode-block").on('mousedown',function(e){
        var didNotMove = true;
        $(this).addClass("active");
        $(".episode-block").on('mouseup mousemove', function(e){
            $(this).removeClass("active");
            if (e.type === 'mouseup' && didNotMove){
                if(e.target.nodeName == "A"){
                    return;
                }
                window.location = this.dataset.url;
            }else{
                didNotMove = false;
            }
        })
    });

  var instances = plyr.setup({
    // Output to console
    debug: true
  });
 //instances.forEach(function(instance) {
    // // Play
    // on('.js-play', 'click', function() { 
    //   instance.play();
    // });
    
    // // Pause
    // on('.js-pause', 'click', function() { 
    //   instance.pause();
    // });
    
    // // Stop
    // on('.js-stop', 'click', function() { 
    //   instance.stop();
    // });
    
    // // Rewind
    // on('.js-rewind', 'click', function() { 
    //   instance.rewind();
    // });
    
    // // Forward
    // on('.js-forward', 'click', function() { 
    //   instance.forward();
    // });
//  });




  jQuery(function() {
    $.ajaxSetup({
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });

    var toggleSort = $('<button type="button" class=" button sort-bits"><i class="icon-resize-vertical"></i> Sort Bits</button>').on('click',
      function(event) {
        $(this).toggleClass('active')
        $("#episode_head").toggle()
        $("#bits_episode").toggleClass('minimize').promise().done(function(){
          $('html, body').animate({
              scrollTop: $("#bits_episode").offset().top -10
          }, 500).promise().done(function(){
            $("#sticky-gutter").foundation('_calc', true, 50);
          })
        })
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



  
});