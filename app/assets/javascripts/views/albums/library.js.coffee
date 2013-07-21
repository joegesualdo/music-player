class MusicPlayer.Views.LibraryView extends Backbone.View
  template: JST['albums/library']
  tagName: 'section'
  className: 'library'
  initialize: ->
  #TODO: Collection not updating when we fetch() the library, but it is when whe call fetch({remote: true})
    @collection.on('reset', @render, this)

  render: ->
    collection = @collection
    @.$el.html(@template({collection: collection}))

    collection.each (album) ->
      console.log(album)
      view = new MusicPlayer.Views.LibraryAlbumView({
        model: album
      #TODO: Why do we pass in a collection?
        collection: collection
      })
      console.log(view)
      $('.albums').append(view.render().el)

    this

