class AlbumController < ApplicationController
  respond_to :json
  def index
    @albums = Album.all
    respond_with @albums
  end

  def show
  end

  def update
  end
end
