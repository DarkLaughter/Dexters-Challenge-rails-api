class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :quiz
  has_one :user
end
