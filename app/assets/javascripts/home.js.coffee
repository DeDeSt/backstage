# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#=======================================================================
#  Document ready
#=======================================================================
$(document).ready ->
#=======================================================================
#  Header desktop script
#=======================================================================
  $(".courses-link").hover (->
    $(this).children().first().addClass "active"
    $("#nav-courses").show()
  ), ->
    $(this).children().first().removeClass "active"
    $("#nav-courses").hide()

  $(".hairstyle-link").hover (->
    $(this).children().first().addClass "active"
    $("#nav-hairstyle").show()
  ), ->
    $(this).children().first().removeClass "active"
    $("#nav-hairstyle").hide()
#========================================================================
#  Home page
#========================================================================
  if('#home-show')
    $(window).load ->
      $('#home-show').homeShow()


#=======================================================================
#  Functions
#=======================================================================
$.fn.homeShow = ->
  $('#home-show #show-pic1').show 'slide',{direction: 'down'}, 1000
  autoShow = ->
    window.setInterval (->
      activeImg = $('#home-show img.active');
      if(activeImg.next().attr('id'))
        activeImg.removeClass('active').next().addClass('active')
        activeImg.fadeOut ->
          activeImg.next().fadeIn()
      else
        firstImg = $('#home-show img').first()
        activeImg.removeClass('active')
        activeImg.fadeOut ->
          firstImg.addClass('active')
          firstImg.fadeIn()
    ), 5000
  autos = autoShow()