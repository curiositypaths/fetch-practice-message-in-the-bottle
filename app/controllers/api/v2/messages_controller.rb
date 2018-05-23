class Api::V2::MessagesController < ApplicationController
    def index
        messages = Message.order(updated_at:'desc')
        render json: messages
    end

    def update
        message = Message.find(params[:id])
        message.update(message_params)
        render json: message
    end

    def destroy
        message = ''
        if Message.find(params[:id]).destroy
            message = {message:'Message was deleted'}
        else
            message = {message:'Something went wrong'}
        end
        render json: message
    end

    def create
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