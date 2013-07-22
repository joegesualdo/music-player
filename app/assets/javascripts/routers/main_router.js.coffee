class MusicPlayer.Routers.MainRouter extends Backbone.Router
  routes:
    '':'home'


  initialize: ->
    library = new MusicPlayer.Collections.Albums
    library.fetch({reset: true})
    player = new MusicPlayer.Models.Player
    @libraryView = new MusicPlayer.Views.LibraryView({
      collection: library
    })
    @playlistView = new MusicPlayer.Views.PlaylistView({
      collection: player.playlist
      player: player
      library: library
    })

  home: ->
    $container = $('#container')
    $container.empty()
    $container.append(@playlistView.render().el)
    $container.append(@libraryView.render().el)


