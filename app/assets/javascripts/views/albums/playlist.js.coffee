class MusicPlayer.Views.PlaylistView extends Backbone.View
  template: JST['albums/playlist']
  tagName: 'section'
  className: 'playlist'


  initialize: ->
    @collection.on('reset', @render, this)
    @player = @options.player
    @library = @options.library

  render: ->
    $(@el).html(@template(@player.toJSON()))

    @$('button.play').toggle(@player.isStopped())
    @$('button.pause').toggle(@player.isPlaying())
    this


