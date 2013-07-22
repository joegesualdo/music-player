class MusicPlayer.Views.PlaylistView extends Backbone.View
  template: JST['albums/playlist']
  tagName: 'section'
  className: 'playlist'


  initialize: ->
    @collection.on('reset', @render, this)
    @collection.bind('refresh', @render, this)
    @collection.bind('add', @renderAlbum, this)

    @player = @options.player
    @library = @options.library
    @library.bind('select', @queueAlbum, this)

  render: ->
    $(@el).html(@template(@player.toJSON()))

    @$('button.play').toggle(@player.isStopped())
    @$('button.pause').toggle(@player.isPlaying())
    this

  queueAlbum: (album) ->
    @collection.add(album)

  renderAlbum: (album) ->
    view = new MusicPlayer.Views.PlaylistAlbumView({
      model: album
      player: @player
      playlist: @collection
    })
    @$('ul').append(view.render().el)



