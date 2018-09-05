class TracksController < ApplicationController
  before_action :skip_authorization

  def new
    @song = Song.find(params[:song_id])
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.user = current_user
    @track.save
    @song = Song.find(params[:song_id])
    @song_track = SongTrack.new(track: @track, song: @song)
    if @song_track.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  private

  def track_params
    params.require(:track).permit(:song_id, :user_id, :description, :bpm, :uploaded_file)
  end
end
