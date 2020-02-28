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
   @heroine = Heroine.create(params.require(:heroine).permit(:name, :super_name))
    if @heroine.valid?
      redirect_to heroines_path
    else flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

end
