class SongsController < ApplicationController
  before_action :skip_authorization
  before_action :set_song, only: [ :show ]

  def index
    @songs = policy_scope(Song)#.order(id: integer, name: string, description: text, bpm: integer, num_of_tracks: integer, duration: integer, user_id: integer, genre_id: integer, created_at: datetime, updated_at: datetime, photo: string)
  end

  def show
    duration = (@song.duration.to_f / 60000).to_s
    split = duration.split(".")
    @minutes = split[0]
    @seconds = split[1]
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)
    @genre = Genre.where(name: genre_params[:genre]).first
    @song.genre = @genre
    @song.user = current_user
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def songs_params
    params.require(:song).permit(:name, :description, :bpm, :duration, :photo)
  end
  def genre_params
    params.require(:song).permit(:genre)
  end
end

