class MusicPlayer.Views.AlbumView extends Backbone.View

  template: JST['albums/album']

  render: ->
    $(@el).html(@template(model: @model.toJSON()));
    this
