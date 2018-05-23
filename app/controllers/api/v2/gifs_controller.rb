class Api::V2::GifsController < ApplicationController
    def index
        gifs = Gif.order(updated_at:'desc')
        render json: gifs
    end

    def destroy
        gif = ''
        if Gif.find(params[:id]).destroy
            gif = {gif:'gif was deleted'}
        else
            gif = {gif:'Something went wrong'}
        end
        render json: gif
    end

    def create
        gif = Gif.create(gif_params)
        render json: gif
    end

    private
    def gif_params
        params.permit(:url,:user_id)
    end
end