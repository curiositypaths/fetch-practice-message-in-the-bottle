class Api::V2::MessagesController < ApplicationController
    def index
        message = Message.all.sample
        render json: message
    end

    def create
        byebug
        message = Message.create(message_params)
        render json: message
    end

    def show
        message = Message.find(params[:id])
        render json: message
    end

    private
    def message_params
        params.require(:message).permit(:real_name,:message)
    end
end