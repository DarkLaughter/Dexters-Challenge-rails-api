class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories.sort_by{|cat| cat.name}

    end
end
