class SongTracksController < ApplicationController
  before_action :skip_authorization

  def new
    @song_track = SongTrack.new
  end

  def create

  end

  def destroy
    @song_track = SongTrack.find(params[:id])
    @song = @song_track.song
    @song_track.destroy
    redirect_to song_path(@song)
  end


end
