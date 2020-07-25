class Dquiz < ApplicationRecord
  belongs_to :dcategory

  has_many :dratings
  has_many :users, through: :dratings

  has_many :dresults
  has_many :users, through: :dresults

  has_many :dquestions
end
