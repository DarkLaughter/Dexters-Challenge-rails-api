class QuizzesController < ApplicationController

        def index
        @meals = Quiz.all
        render json: @meals
    end

     def show
        @quiz = Quiz.find(params[:id])
        render json: @quiz
    end

end
