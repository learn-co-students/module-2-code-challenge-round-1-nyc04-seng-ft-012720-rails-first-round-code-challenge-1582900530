class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    render :index
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.find(params[:id])
  end
  
  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
    @heroine.save
    redirect_to heroine_path(@heroine)
  end

  def update
    @heroine.update(heroine_params)
    if @heroine.valid?
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
