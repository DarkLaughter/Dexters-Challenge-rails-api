class DquestionsController < ApplicationController

      def index
        @question = Question.all
        render json: @question
    end


end
