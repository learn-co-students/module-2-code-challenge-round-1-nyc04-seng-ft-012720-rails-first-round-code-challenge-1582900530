class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show 
    @heroine = Heroine.find(params[:id])
  end

  def new 
    @heroine = Heroine.new 
  end

  def create 
    @heroine = Heroine.create(heroine_params)
    #redirect_to heroine_path(@heroine)
    # I cant get this to redirect 
  end

  def edit 
    @heroine = Heroine.find(params[:id])
  end

  def update 
    @heroine = Heroine.update(heroine_params)
  end

  private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power)
  end
  
end
