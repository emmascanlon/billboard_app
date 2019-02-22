class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @billboards = Billboard.all
    @song = @artist.songs.new
  end

  def edit
    @billboards = Billboard.all
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
  end
end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
  end
end

  def destroy
    @song.destroy
    redirect_to artist_path(@artist)
    end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :billboard_id)
  end

end
