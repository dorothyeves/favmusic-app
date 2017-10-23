class SongsController < ApplicationController
  def index
    @songs = Song.all.order("RANDOM()")
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    if @song.invalid?
      flash[:error] = '<strong>Could not save</strong> the data your entered is invalid.'
    end
    redirect_to songs_path
  end

  def show
    @song2 = Song.all
  end


  private
  def song_params
    params.require(:song).permit(:name, :song)
  end

end
