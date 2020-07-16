class ResultSerializer < ActiveModel::Serializer
  attributes :id, :num_correct, :num_incorrect, :time
  has_one :user
  has_one :quiz
end
