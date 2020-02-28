class HeroinePowersController < ApplicationController
    before_action :authorized

    def create
        @heroine_power = heroine_power.create(safe_params)
       
        redirect_to heroine_path
    end

    def destroy
        @heroine_power = heroine_power.find(params[:id])
        @heroine_power.destroy
        redirect_to heroines_path
    end

    private

    def safe_params
        params.require(:heroine_power).permit(:heroine_id, :power_id)
    end


end
