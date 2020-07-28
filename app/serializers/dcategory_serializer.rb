class DcategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :dquizzes
  has_many :dquizzes
end
