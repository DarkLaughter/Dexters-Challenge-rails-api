class QuestionsController < ApplicationController

    def index
        @meals = Question.all
        render json: @meals
    end


end
