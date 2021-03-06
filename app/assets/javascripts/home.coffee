# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class @Home
  @showRoom: ->
    $.ajax
      type: "GET"
      url: "/rooms"
      dataType: "script"

  @showComment: (room_id) ->
    $.ajax
      type: "GET"
      url: "/rooms/#{room_id}/comments"
      dataType: "script"

  @socket: null

$ ->
  Home.socket = io.connect('http://127.0.0.1:3001/')

  Home.socket.on 'emit_comment', (data) ->
    Home.showComment(data)

  Home.showRoom()
