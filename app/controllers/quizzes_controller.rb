class QuizzesController < ApplicationController

        def index
        @meals = Quiz.all
        render json: @meals
    end

end
