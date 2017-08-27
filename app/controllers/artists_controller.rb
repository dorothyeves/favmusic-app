class ArtistsController < ApplicationController
  def index
    @artist = Artist.order("RANDOM()").first
  end

  def new
    @artist = Artist.new
  end

  def create
    Artist.create(artist_params)
    redirect_to root_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description)
  end
end
