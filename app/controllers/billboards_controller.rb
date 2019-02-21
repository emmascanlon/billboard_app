class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def edit
  end
  
  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private
  
end
