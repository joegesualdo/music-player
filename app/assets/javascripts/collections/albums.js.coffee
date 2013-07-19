class MusicPlayer.Collections.Albums extends Backbone.Collection

  model: MusicPlayer.Models.Album
  url: '/api/albums.json'
