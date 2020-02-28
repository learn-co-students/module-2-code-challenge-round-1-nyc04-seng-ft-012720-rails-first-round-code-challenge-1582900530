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
     @heroine_power = HeroinePower.new
     @heroine = Heroine.create(heroine_params)
     if @heroine.valid?
        redirect_to @heroine
     else
        render :new
     end
  end




  private

  def heroine_params
     params.require(:heroine).permit(:name, :super_name)
  end


end
