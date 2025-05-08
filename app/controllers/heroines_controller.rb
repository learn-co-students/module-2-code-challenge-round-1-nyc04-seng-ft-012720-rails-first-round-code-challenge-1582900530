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
  
    
    redirect_to heroine_path(@heroine.id)
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
  
  def heroine_id
    @heroine = Heroine.create(params)
    @heroine.id
  end

end
