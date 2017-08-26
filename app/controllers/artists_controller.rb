class ArtistsController < ApplicationController
  def index
    @artist = Artist.order("RANDOM()").first
  end
end
