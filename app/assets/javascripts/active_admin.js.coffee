//= require jquery
//= require jquery_ujs
//= require jquery.ui.core
//= require jquery.ui.widget
//= require jquery.ui.datepicker
//= require active_admin/application

sendSortRequestOfModel = (model_name) ->
  formData = $('#' + model_name + ' tbody').sortable('serialize')
  formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"))
  $.ajax
    type: 'post'
    data: formData
    dataType: 'script'
    url: '/admin/' + model_name + '/sort'

jQuery ($) ->

  # home page slides
  if $('body.admin_episodes.show').length
    $( "#segments tbody" ).disableSelection()
    $( "#segments tbody" ).sortable
      axis: 'y'
      cursor: 'move'
      update: (event, ui) ->
        sendSortRequestOfModel("segments")

jQuery ($) ->
	$(".bits").children('li').toggle()
	$( ".bits h3").prepend  ->
		$(this).next('li').children('fieldset').length + " "
	$( ".bits h3").click ->
		$(this).next('li').slideToggle()


