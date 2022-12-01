class HeroesController < ApplicationController

    def index
        render json: Hero.all
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroWithPowersSerializer
    end
end
