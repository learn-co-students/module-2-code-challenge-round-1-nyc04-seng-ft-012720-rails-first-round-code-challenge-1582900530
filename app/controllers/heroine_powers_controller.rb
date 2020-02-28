class HeroinePowersController < ApplicationController

    def new
        @heorinepower = Heorinepower.new
    end

    def create
        @heorinepower = Heorinepower.new(@heroine.id)
        @heorinepower = Heorinepower.create(hero_params)
    end

    private
    def hero_params
        params.require(:heorinepower).permit(:heroine_id,:power_id)
    end
end
