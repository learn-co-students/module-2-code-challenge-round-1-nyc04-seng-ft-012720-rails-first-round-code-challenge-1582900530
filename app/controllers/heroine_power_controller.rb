class HeroinePowerController < ApplicationController
    def new 
        @heroine_power = HeroinePower.new 
    end

    def create 
        @heroine_power = HeroinePower.create(heroine_power_params)
        redirect_to heroine_path
    end
    
    private 

    def heroine_power_params
        params.require(:heroine_power).permit(:name, :super_name, :power)
    end
end
