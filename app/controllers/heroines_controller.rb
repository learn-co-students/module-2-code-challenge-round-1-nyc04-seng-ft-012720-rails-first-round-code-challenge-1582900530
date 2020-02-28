class HeroinesController < ApplicationController
  
  
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
    @heroine_power = HeroinePower.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      params[:heroine][:heroine_powers][:heroine_id] = @heroine.id
      @heroine_power = HeroinePower.create(power_id: params[:heroine][:heroine_powers][:power_id],heroine_id: params[:heroine][:heroine_powers][:heroine_id])
      redirect_to heroine_path(@heroine)
    else
      render 'new'
    end
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :heroine_powers)
  end
end
