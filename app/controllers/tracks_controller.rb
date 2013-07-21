class TracksController < ActionController::Base

  respond_to :json

  def index
    @tracks = Track.where(album_id: params[:album_id])
    respond_with @tracks

  end

  def show
    @track = Track.find(params[:id])
    respond_with @track
  end

  def update

  end

  def destroy

  end

  def create

  end

  def all
    @tracks = Track.all
    respond_with @tracks
  end
end