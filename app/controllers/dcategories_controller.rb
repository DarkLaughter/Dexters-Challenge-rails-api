class DcategoriesController < ApplicationController

     def index
        @dcategories = Dcategory.all
        render json: @dcategories.sort_by{|cat| cat.name}

    end

end
