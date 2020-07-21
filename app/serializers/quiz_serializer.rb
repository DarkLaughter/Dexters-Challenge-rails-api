class QuizSerializer < ActiveModel::Serializer
  attributes :id, :level, :quizratings
  # , :questions
  belongs_to :category


  def quizratings

    quizarr = object.ratings.map{|quiz| quiz}
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

