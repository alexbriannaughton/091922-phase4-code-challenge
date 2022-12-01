class HeroPowersController < ApplicationController
    def create
        hp = HeroPower.create!(hp_params)
        render json: hp.hero, status: :created
    end

    private

    def hp_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
