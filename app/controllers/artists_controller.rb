class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.order("RANDOM()")

  end

  
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.invalid?
      flash[:error] = '<strong>Could not save</strong> the data your entered is invalid.'
    end
    redirect_to root_path
  end

  def show
    @artist2 = Artist.all
  end
 
  private

  def artist_params
    params.require(:artist).permit(:name, :description)
  end
end
