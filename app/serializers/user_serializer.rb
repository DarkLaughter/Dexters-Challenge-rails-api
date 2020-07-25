class UserSerializer < ActiveModel::Serializer
  attributes  :id, :name, :username, :email, :numquizzesrated, :avg_qrating, :totalqstaken, :totalAnscorrect, :totalAnsincorrect, :questionPercentage, :totalquestions, :avgTime

  def results
    if object.results == []
       return 0
    else  
      object.results
    end 
  end

  ###ratings associated with user
    def ratings
    if object.ratings == []
       return 0
    else  
      object.ratings
    end 
  end

  
  def numquizzesrated
    arr = object.ratings.map{|rating| rating.score}
    arr.size
  end
  
  def avg_qrating
if object.ratings.size == 0
       return 0
    else  
      totalnum = object.ratings.size
      sumarray = object.ratings.map{|ratingObj| ratingObj.score}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      avg = sum/totalnum
      avg.to_f
  
    end 
  end
###### quiz data for user 
  def totalqstaken
    object.results.size
  end
########## results for user

def totalAnscorrect
  if object.results.size == 0
    return 0
  else
      sumarray = object.results.map{|resultObj| resultObj.num_correct}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      sum
  end
end

def totalAnsincorrect
  if object.results.size == 0
    return 0
  else
      sumarray = object.results.map{|resultObj| resultObj.num_incorrect}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      sum
  end
end

def questionPercentage
  total = totalAnscorrect + totalAnsincorrect

  if total == 0
    return 0
  else
    avg = (totalAnscorrect * 100)/total
    avg
    
  end

end

def totalquestions
  totalAnscorrect + totalAnsincorrect
end

def avgTime
  if object.results.size == 0
    return 0
  else
      total = object.results.size
      sumarray = object.results.map{|resultObj| resultObj.time.to_i}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      avg = sum/total
      avg.to_f
  end
end


end

