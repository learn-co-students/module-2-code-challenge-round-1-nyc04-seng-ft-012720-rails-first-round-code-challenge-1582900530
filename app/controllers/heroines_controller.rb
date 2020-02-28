class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    render :index
  end

  def show
    @heroine = Heroine.find(params[:id])
    render :show
  end

  def new
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @heroine.save
    redirect_to heroine_path(@heroine)
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
