class SongsController < ApplicationController
  before_action :set_song, only: [:show, :new, :edit, :delete]

  def index
    @songs = Song.all
  end

  def show

  end

  def new

  end

  def create
    @song = Song.new
    redirect_to song_path(@song)
  end

  def edit

  end

  def update
    @song = Song.new
    redirect_to song_path(@song)
  end

  def destroy
    redirect_to songs_path
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end


end
