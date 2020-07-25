# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Order of creation 
require 'faraday'
require 'htmlentities'
# require 'rest_client'




User.create(name:ENV["name"], username:ENV["un"], password:ENV["pw"])
##########
category = Category.create(name:"Movies")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["movieslv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text: HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}



# category = Category.create(name:"Movies")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["movieslv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text: HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}



# category = Category.create(name:"Movies")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["movieslv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text: HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "1"

##########
category = Category.create(name:"Music")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["musiclv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Music")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["musiclv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Music")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["musiclv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "2"

################
category = Category.create(name:"Animals")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["animalslv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Animals")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["animalslv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Animals")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["animalslv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}


puts "3"

#########################
category = Category.create(name:"Mythology")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["mythologylv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Mythology")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["mythologylv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Mythology")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["mythologylv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "4"
###################################################
category = Category.create(name:"Television")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["televisionlv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Television")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["televisionlv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Television")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["televisionlv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}
puts "5"
########################
category = Category.create(name:"Video Games")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["vglv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Video Games")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["vglv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Video Games")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["vglv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}
puts "6"
#######################

category = Category.create(name:"Comics")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["comicslv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Comics")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["comicslv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Comics")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["comicslv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "7"
##########

category = Category.create(name:"Anime-Manga")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["amlv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Anime-Manga")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["amlv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Anime-Manga")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["amlv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "8"
###############
category = Category.create(name:"General Knowledge")
quiz = Quiz.create(level: 1, category_id: category.id)
response = Faraday.get ENV["genlv1"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Celebrities")
quiz = Quiz.create(level: 2, category_id: category.id)
response = Faraday.get ENV["genlv2"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

# category = Category.create(name:"Art")
quiz = Quiz.create(level: 3, category_id: category.id)
response = Faraday.get ENV["genlv3"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:HTMLEntities.new.decode(question["question"]), correct: HTMLEntities.new.decode(question["correct_answer"]), incorrect1: HTMLEntities.new.decode(question["incorrect_answers"][0]),incorrect2: HTMLEntities.new.decode(question["incorrect_answers"][1]), incorrect3: HTMLEntities.new.decode(question["incorrect_answers"][2]))}

puts "9"
