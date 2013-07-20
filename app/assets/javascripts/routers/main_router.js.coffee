class MusicPlayer.Routers.MainRouter extends Backbone.Router
  routes:
    '':'home'

  initialize: ->
    library = new MusicPlayer.Collections.Albums
    library.fetch({reset: true})
    @libraryView = new MusicPlayer.Views.LibraryView({
      collection: library
    })

  home: ->
    $container = $('#container')
    $container.empty()
    $container.append(@libraryView.render().el)
