class MusicPlayer.Collections.Playlist extends MusicPlayer.Collections.Albums
  isFirstAlbum: (index)->
    index == 0

  isLastAlbum: (index)->
    index == (@models.length - 1)