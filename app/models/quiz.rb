class Quiz < ApplicationRecord
  belongs_to :category
  has_many :ratings
  has_many :users, through: :ratings

  has_many :results
  has_many :users, through: :results

  has_many :questions
end
