class TracksController < ApplicationController
  before_action :skip_authorization
  def new
    @song = Song.find(params[:song_id])
    @track = Track.new
  end

  def create
    @song_track = SongTrack.new
    @track = Track.new(track_params)
    @track.user = current_user
    @track.save
    @song_track.track = @track
    @song_track.song_id = params[:song_id]
    @song_track.save
    if @song_track.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      @track.save
    else
      render :edit
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to songs_path
  end


  private

  def track_params
    params.require(:track).permit(:song_id, :user_id, :description, :bpm)
  end
end
