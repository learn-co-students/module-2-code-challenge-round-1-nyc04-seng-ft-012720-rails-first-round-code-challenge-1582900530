class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    #@heroinepower = Heroinepower.new
  end
  
  def create
    @heroine = Heroine.create(safe_params)
    redirect_to heroine_path(@heroine)
  end

  private
  def safe_params
    params.require(:heroine).permit(:name,:supername)
  end
  
end
