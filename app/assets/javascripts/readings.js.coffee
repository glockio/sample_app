# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'page:change',->
  navBar=$('.top-bar-section')

  $('.alert').on 'click', 'button',(event)-> 
    event.preventDefault()
    $(this).parent().hide()

  navBar.on 'click', 'li', ->
    $('.top-bar-section').find('.active').removeClass('active')
    $(this).addClass('active')

 

 
  



