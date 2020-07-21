class RatingsController < ApplicationController
    before_action :authorized, only: [:create]
    
    def create
        @rating = Rating.create(user_id: @user.id, quiz_id:params[:quiz_id], score:params[:rating])
        render json: {
        rating: RatingSerializer.new(@rating)}
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end




end
