class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show 
    @power = Power.find(params[:id])
  end

  def edit 
    @power = Power.find(params[:id])
  end

  def update 
    @power = Power.update(power_params)
    redirect_to power_path
  end

  private 

  def power_params
    params.require(:power).permit(:power, :description)
  end
end
