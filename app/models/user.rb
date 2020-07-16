class User < ApplicationRecord
    has_secure_password
    has_many :results
    has_many :quizzes, through: :results

    has_many :ratings
    has_many :quizzes, through: :ratings
end
