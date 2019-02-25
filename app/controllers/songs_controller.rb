class SongsController < ApplicationController
  before_action :set_artist, except: [:view_songs]
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  
  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @song = Song.new
  end

  def view_songs
    @view_songs = Song.all  
  end

  def edit
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to "/artists/#{@artist.id}/songs"
    else
      render :new
    end
  end

  def update
    @song.update(song_params)
    redirect_to   
  else
    render :edit
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path  
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])  
  end

  def set_song
    @song = Song.find(params[:id])  
  end

  def song_params
    params.require(:song).permit(:name, :url, :body)  
  end
end

