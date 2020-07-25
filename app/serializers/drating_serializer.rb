class DratingSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :user
  has_one :dquiz
end
