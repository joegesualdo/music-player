window.MusicPlayer =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new MusicPlayer.Routers.MainRouter()
    Backbone.history.start()

$(document).ready ->
  MusicPlayer.initialize()
#  This is how i initialized view on page


