class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :quizzes
  has_many :quizzes

end
