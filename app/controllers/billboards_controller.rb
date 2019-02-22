class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :edit, :update, :destroy]
  def index
    @billboards = Billboard.all
  end

  def show
  end

  def edit
  end
  
  def update
    if @billboard.update(billboard_params)
      redirect_to billboard_path(@billboard)
    else
      render :edit
  end
end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else 
      render :new
    end
  end

  def destroy
    @billboard = Billboard.find(params[:id])
    @billboard.destroy
    redirect_to billboards_path
  end

  private
  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

 def billboard_params
    params.require(:billboard).permit(:name, :description)
  end
end