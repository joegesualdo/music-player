class MusicPlayer.Views.AlbumView extends Backbone.View

  template: JST['albums/album']
  tagName: 'li'
  className: 'album'



  initialize: ->
    @model.on('change', @render, this)


  render: ->

#TODO: This is where the problem is

    @.$el.html(@template(model: @model.toJSON()))
    this
