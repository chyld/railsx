class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end
  def create
    Song.create(params[:song])
    redirect_to(songs_path)
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
