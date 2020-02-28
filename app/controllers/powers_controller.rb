class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.find(params[:id])
  end

  def create
    @power = Power.new(power_params)
    @power.save
    redirect_to power_path(@power)
  end

  private

  def power_params
    params.require(:power).permit(:name, :descriiption)
  end
end
