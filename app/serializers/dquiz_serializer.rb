class DquizSerializer < ActiveModel::Serializer
  attributes :id, :level, :dquizratings, :dquestions
  has_one :dcategory


  def dquizratings

    quizarr = object.dratings.map{|quiz| quiz}
    ratings = quizarr.map{|quiz| quiz.score}

    if ratings.size == 0
      return 0
    else
      sum = ratings.reduce(0) {|sum, num| sum + num}
      total = ratings.size
      avg = sum/total
    end
  end



end
