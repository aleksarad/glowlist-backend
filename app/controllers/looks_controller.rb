class LooksController < ApplicationController

    def create
        look = Look.create(look_params)
        render json: look
    end

    def destroy
        look = Look.find(params[:id])
        look.destroy
        #json being rendered just so something is returned
        render json: look
    end

    def update
        look = Look.find(params[:id])
        look.update(look_params)
        render json: look
    end

    private

    def look_params
        params.require(:look).permit(:name, :description, :finished_look, :background_image, :background_color, :completed, :user_id, :sketch => {}, :colors => [])
    end
end
