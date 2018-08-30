class TracksController < ApplicationController
  before_action :skip_authorization
  def new
    @song = Song.find(params[:song_id])
    @track = Track.new
  end

  def create
    @song_track = SongTrack.new
    @song_track.track = @track
    @song_track.song = params[:song_id]
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def booking_params
    params.require(:track).permit(:song_id, :user_id, :description, :bpm)
  end
end
