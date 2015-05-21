# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  window.Home = {}
  Home.socket = io.connect('http://127.0.0.1:3001/')

  Home.showRoom = ->
    $.ajax
      type: "GET"
      url: "/rooms"
      dataType: "script"

  Home.showComment = (room_id) ->
    $.ajax
      type: "GET"
      url: "/rooms/#{room_id}/comments"
      dataType: "script"

  Home.socket.on 'emit_comment', (data) ->
    Home.showComment(data)

  Home.showRoom()
