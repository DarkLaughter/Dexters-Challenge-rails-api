class UserSerializer < ActiveModel::Serializer
  attributes  :id, :name,:username, :email, :numquizzesrated, :avg_qrating, :totalqstaken, :totalAnscorrect, :totalAnsincorrect, :questionPercentage, :totalquestions, :avgTime, :dnumquizzesrated, :davg_qrating, :dtotalqstaken, :dtotalAnscorrect, :dtotalAnsincorrect, :dquestionPercentage, :dtotalquestions, :davgTime
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

######DD info 
def dresults
    if object.dresults == []
       return 0
    else  
      object.dresults
    end 
  end

  ###ratings associated with user
    def dratings
    if object.dratings == []
       return 0
    else  
      object.dratings
    end 
  end

  
  def dnumquizzesrated
    arr = object.dratings.map{|rating| rating.score}
    arr.size
  end
  
  def davg_qrating
if object.ratings.size == 0
       return 0
    else  
      totalnum = object.dratings.size
      sumarray = object.dratings.map{|ratingObj| ratingObj.score}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      avg = sum/totalnum
      avg.to_f
  
    end 
  end
###### quiz data for user 
  def dtotalqstaken
    object.dresults.size
  end
########## results for user

def dtotalAnscorrect
  if object.dresults.size == 0
    return 0
  else
      sumarray = object.dresults.map{|resultObj| resultObj.num_correct}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      sum
  end
end

def dtotalAnsincorrect
  if object.dresults.size == 0
    return 0
  else
      sumarray = object.dresults.map{|resultObj| resultObj.num_incorrect}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      sum
  end
end

def dquestionPercentage
  total = dtotalAnscorrect + dtotalAnsincorrect

  if total == 0
    return 0
  else
    avg = (dtotalAnscorrect * 100)/total
    avg
    
  end

end

def dtotalquestions
  dtotalAnscorrect + dtotalAnsincorrect
end

def davgTime
  if object.dresults.size == 0
    return 0
  else
      total = object.dresults.size
      sumarray = object.dresults.map{|resultObj| resultObj.time.to_i}
      sum = sumarray.reduce(0){|sum, num| sum + num}
      avg = sum/total
      avg.to_f
  end
end



end

