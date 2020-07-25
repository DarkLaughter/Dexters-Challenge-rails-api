class DresultsController < ApplicationController
before_action :authorized, only: [:create]

    def create
        @dresult = Dresult.create(user_id: @user.id, dquiz_id:params[:dquiz_id], num_correct:params[:num_correct], num_incorrect:params[:num_incorrect], time: params[:time])
        render json: {
        rating: DresultSerializer.new(@dresult)}
    end
end
