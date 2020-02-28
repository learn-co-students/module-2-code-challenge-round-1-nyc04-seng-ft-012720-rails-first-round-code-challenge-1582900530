class HeroinesController < ApplicationController
  def index
     @heroines = Heroine.all
  end
  def show
     @heroine = Heroine.find(params[:id])
  end
  def new
     @heroine = Heroine.new
     @heroine_power = HeroinePower.new
     @powers_array = Power.pluck(:name, :id)
  end
  def create 
     @heroine = Heroine.create(heroine_params)
     if @heroine.valid?
        HeroinePower.create(heroine_id: @heroine.id, power_id: params[:power_id])
        redirect_to @heroine
     else
        @powers_array = Power.pluck(:name, :id)
        render :new
     end
  end




  private

  def heroine_params
     params.require(:heroine).permit(:name, :super_name)
  end

end
