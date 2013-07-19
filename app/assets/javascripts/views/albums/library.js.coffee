class MusicPlayer.Views.LibraryView extends Backbone.View
  template: JST['albums/library']
  tagName: 'section'
  className: 'library'
  initialize: ->
    @collection.on('reset', @render, this)
  render: ->
    collection = @collection
    @.$el.html(@template({collection: collection}))

    collection.each (album) ->
      console.log(album)
      view = new MusicPlayer.Views.LibraryAlbumView({
        model: album
      })
      console.log(view)
      $('.albums').append(view.render().el)

    this

