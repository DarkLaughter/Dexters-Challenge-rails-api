class DresultSerializer < ActiveModel::Serializer
  attributes :id, :time, :num_incorrect, :num_correct
  has_one :user
  has_one :dquiz
end
