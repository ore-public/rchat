# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  window.Home = {}

  Home.showRoom = ->
    $.ajax
      type: "GET"
      url: "/rooms"
      dataType: "script"

  Home.showRoom()
