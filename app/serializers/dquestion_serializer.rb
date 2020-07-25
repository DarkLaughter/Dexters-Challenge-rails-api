class DquestionSerializer < ActiveModel::Serializer
  attributes :id, :q_text, :correct, :incorrect
  has_one :dquiz
end
