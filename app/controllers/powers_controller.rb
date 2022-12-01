class PowersController < ApplicationController
    def index
        render json: Power.all
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power, status: :accepted
    end

    private

    def power_params
        params.permit(:name, :description)
    end
end
