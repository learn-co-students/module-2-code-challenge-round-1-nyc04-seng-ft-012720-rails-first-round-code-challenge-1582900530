class HeroinePowersController < ApplicationController

    def create
        @heroine_power = HeroinePower.new(heroine_params)
        @heroine_power.save
        redirect_to heroine_path(@heroine_power.heroine)
    end

    private
    def heroine_params
        params.require(:heroine_power).permit(:heroine_id, :power_id)
    end
end
