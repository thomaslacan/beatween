class SongsController < ApplicationController
  def index
    @songs = policy_scope(Song)#.order(id: integer, name: string, description: text, bpm: integer, num_of_tracks: integer, duration: integer, user_id: integer, genre_id: integer, created_at: datetime, updated_at: datetime, photo: string)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
