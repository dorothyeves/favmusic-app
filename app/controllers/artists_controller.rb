class ArtistsController < ApplicationController
  def index
    @artist = Artist.order("RANDOM()").first
  end

  def new
    @artist = Artist.new
  end
end
