class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  
  def show
    @heroine = Heroine.find(params[:id])
    #@power = Power.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = [ "Super Strength", "Flight", "Super Human Senses", "Elasticity"]
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.save  
    redirect_to heroine_path(@heroine)
  else
    redirect_to new_heroine_path
  end
end


private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end

