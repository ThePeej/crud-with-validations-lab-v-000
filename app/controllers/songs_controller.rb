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
    @song.Song.new
    redirect_to song_path(@song)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_song
    @song = Song.find(params[:id])
  end


end
