class HeroinePowersController < ApplicationController

    def create
        @heroine_power = HeroinePower.create(params.require(:heroine_power).permit(:heroine_id, :power_id))
        redirect_to heroine_power.heroine
    end
    
end