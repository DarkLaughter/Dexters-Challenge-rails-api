class DquizSerializer < ActiveModel::Serializer
  attributes :id, :level
  has_one :dcategory
end
