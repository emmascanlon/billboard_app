class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
