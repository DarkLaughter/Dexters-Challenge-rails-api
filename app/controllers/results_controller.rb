class ResultsController < ApplicationController
    before_action :authorized, only: [:create]

    def create
        @result = Result.create(user_id: @user.id, quiz_id:params[:quiz_id], num_correct:params[:num_correct], num_incorrect:params[:num_incorrect], time: params[:time])
        render json: {
        rating: ResultSerializer.new(@result)}
    end


end
