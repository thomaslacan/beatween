class SongsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :skip_authorization
  before_action :set_song, only: [ :show ]

  def index
    if params[:query].present?
      @songs = policy_scope(Song.global_search(params[:query]))
    else
      @songs = policy_scope(Song)
    end
  end

  def show
    @uploaded_files = @song.tracks.map {|track| track.uploaded_file.file.public_id}
    @download_link = Cloudinary::Utils.download_zip_url(
        :public_ids => @uploaded_files,
        :resource_type => 'video')
    @minutes = @song.duration / 60000
    @seconds = @song.duration / 10000 % 60
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
    @user = current_user
    @song = Song.find(params[:id])
    if @song.user == @user
      return @song
    else
      render :show
    end
  end

  def update
    @song = Song.find(params[:id])
    @song.update(songs_params)
    redirect_to song_path(@song)
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

