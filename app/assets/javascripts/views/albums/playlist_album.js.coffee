class MusicPlayer.Views.PlaylistAlbumView extends MusicPlayer.Views.AlbumView
  events:
    'click .remove.queue': 'removeFromPlaylist'

  initialize: ->
    @model.bind('remove', @remove, this)

  removeFromPlaylist: ->
    @.options.playlist.remove(@model)