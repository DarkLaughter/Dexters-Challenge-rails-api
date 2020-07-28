class DratingsController < ApplicationController
    before_action :authorized, only: [:create]

def create
        @drating = Drating.create(user_id: @user.id, dquiz_id:params[:dquiz_id], score:params[:drating])
        render json: {
        rating: DratingSerializer.new(@drating)}
    end
    
end
