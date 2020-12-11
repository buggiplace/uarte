class ArtistsController < ApplicationController


  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
  end

  private
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :artist_name, :biography, :artist_id)
  end
end



