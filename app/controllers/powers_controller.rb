class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id]) 
  end

  def new 
    @power = Power.new
  end

  def create 
    @power = Power.create(params.require(:power).permit(:name, :description))
  end
  
  def edit 
  end

  
  def update
    @power = Power.find(params[:id])
    @power.update(params.require(:heroine).permit(:name, :description))
    redirect_to heroine_path(@heroine)
  end







end
