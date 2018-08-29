class SongsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :skip_authorization
  before_action :set_song, only: [ :show ]

  def index
    @songs = policy_scope(Song)#.order(id: integer, name: string, description: text, bpm: integer, num_of_tracks: integer, duration: integer, user_id: integer, genre_id: integer, created_at: datetime, updated_at: datetime, photo: string)
  end

  def show
    @minutes = @song.duration / 60000
    @seconds = @song.duration / 10000 % 60
  end

  def new
    @song = Song.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end
end
