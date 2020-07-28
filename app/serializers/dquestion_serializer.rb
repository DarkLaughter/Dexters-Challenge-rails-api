class DquestionSerializer < ActiveModel::Serializer
  attributes :id, :q_text, :correct, :incorrect
  belongs_to :dquiz
end
