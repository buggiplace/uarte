class ArtistsController < ApplicationController


  def index
    @artworks = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :artist_name, :biography)
  end
end
