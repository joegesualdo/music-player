class MusicPlayer.Views.LibraryAlbumView extends MusicPlayer.Views.AlbumView
  events:
    'click .add.queue': 'select'
  select: ->
    @collection.trigger('select', @model)
    console.log('Triggered select', @model)
