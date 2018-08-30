class SongTracksController < ApplicationController
  before_action :skip_authorization

  def new
    @song_track = SongTrack.new
  end

  def create

  end

end
