class User < ApplicationRecord
    has_secure_password
    has_many :results
    has_many :quizzes, through: :results

    has_many :ratings
    has_many :quizzes, through: :ratings

     has_many :dresults
    has_many :dquizzes, through: :dresults

    has_many :dratings
    has_many :dquizzes, through: :dratings
end
