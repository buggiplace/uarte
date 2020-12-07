class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(artwork_params)
  end

private
  def artwork_params
    params.require(:artwork).permit(:title, :description, :artwork_type, :image_url)
  end
end

