class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      song_params.each do |song|
        @artist.songs.create(name: song)
      end
      redirect_to artist_path(@artist), notice: "Artist created!"
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      song_params.each do |song|
        @artist.songs.create(name: song)
      end
      redirect_to @artist, notice: "Artist updated!"
    else
      render :edit
    end
  end

private

   def artist_params
    params
      .require(:artist)
      .permit(:name, :image_url, song_ids: [])
  end

end
