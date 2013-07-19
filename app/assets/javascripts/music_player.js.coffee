window.MusicPlayer =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    App = new MusicPlayer.Routers.MainRouter()
    Backbone.history.start()

$(document).ready ->
  MusicPlayer.initialize()
#  This is how i initialized view on page


