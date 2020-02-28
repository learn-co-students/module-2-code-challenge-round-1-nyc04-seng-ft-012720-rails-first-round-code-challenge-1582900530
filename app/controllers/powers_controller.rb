class PowersController < ApplicationController
  
  def index
    @powers = Power.all
  end

  def show
    @power = Power.all.find(params[:id])
  end

  def edit
    @power = Power.all.find(params[:id])
  end

  def update
    @power = Power.all.find(params[:id])
    if article.update(power_params)
      redirect_to @power

    #this is where i am working when time is called
  end

  private
  def power_params
    params.require(:power).permit(:name, :description)
  end

end
