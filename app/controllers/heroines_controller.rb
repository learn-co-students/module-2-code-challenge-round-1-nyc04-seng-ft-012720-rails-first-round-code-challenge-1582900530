class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @powers = Power.all #for some reason @powers was returning nil on f.collection_select, so I changed it to Power.all
    @heroine = Heroine.new   
    @heroine_power = HeroinePower.new 
  end
  
  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  private

    def heroine_params
      params.require(:heroine).permit(:name, :super_name)
    end

end
