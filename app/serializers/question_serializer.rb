class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :q_text, :correct, :incorrect1, :incorrect2, :incorrect3
 
  belongs_to :quiz
end
