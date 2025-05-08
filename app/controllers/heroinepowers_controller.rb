class HeroinepowersController < ApplicationController
    def new 
        @heroinepower = Heroinepowers.new  
    end

    def create
        @heroinepower = Heroinepowers.create(params.require(:heroinepower).permit(:power, :heroine))
    end

    def edit 
        @heroine = Heroine.find(params[:id])
    end

    def update 
        @heroine = Heroine.find(params[:id])
        @heroine.update(params.require(:heroine).permit(:name, :super_name))
        redirect_to heroine_path(@heroine)
    end

    def destroy 
        @heroine = Heroine.find(params[:id])
        @heroine.destroy
        redirect_to heroine_path
    end


end
