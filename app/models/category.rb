class Category < ApplicationRecord
  has_many :quizzes
  has_many :ratings, through: :ratings

end
