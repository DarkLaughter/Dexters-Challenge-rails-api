class DquizzesController < ApplicationController


    def index
        @dquizzes = Dquiz.all
        render json: @dquizzes
    end

     def show
        @Dquiz = Dquiz.find(params[:id])
        render json: @Dquiz
    end
end
