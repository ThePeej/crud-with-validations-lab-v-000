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
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
    @song = Song.assign_attributes(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end

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

  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end

end
