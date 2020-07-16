# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Order of creation 
require 'faraday'


User.create(name:ENV["name"], username:["un"], password:ENV["pw"])

category = Category.create(name:"Movies")
puts "category"
quiz = Quiz.create(level: 1, category_id: category.id)
puts "quiz"

response = Faraday.get ENV["movies"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:question["question"], correct: question["correct_answer"], incorrect1: question["incorrect_answers"][0],incorrect2: question["incorrect_answers"][1], incorrect3: question["incorrect_answers"][2])}

puts "1"

category = Category.create(name:"music")
puts "category"
quiz = Quiz.create(level: 1, category_id: category.id)
puts "quiz"

response = Faraday.get ENV["music"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:question["question"], correct: question["correct_answer"], incorrect1: question["incorrect_answers"][0],incorrect2: question["incorrect_answers"][1], incorrect3: question["incorrect_answers"][2])}
puts "2"

category = Category.create(name:"animals")
puts "category"
quiz = Quiz.create(level: 1, category_id: category.id)
puts "quiz"

response = Faraday.get ENV["animals"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:question["question"], correct: question["correct_answer"], incorrect1: question["incorrect_answers"][0],incorrect2: question["incorrect_answers"][1], incorrect3: question["incorrect_answers"][2])}

puts "3"

category = Category.create(name:"mythology")
puts "category"
quiz = Quiz.create(level: 1, category_id: category.id)
puts "quiz"

response = Faraday.get ENV["mythology"]
arr = response.body
data = JSON.parse(arr)
data["results"].each{|question| Question.create(quiz_id: quiz.id, q_text:question["question"], correct: question["correct_answer"], incorrect1: question["incorrect_answers"][0],incorrect2: question["incorrect_answers"][1], incorrect3: question["incorrect_answers"][2])}
puts "4"











# User.create(name:"Ramon", username:"ramon20", password:"abc12")

# category = Category.create(name:"history")
# quiz = Quiz.create(level: 1, category_id: category.id)
# Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)
# Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)
# Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)

    # Question.create(quiz_id: 1, q_text: question.question, correct: question, incorrect1: 5, incorrect2: 2, incorrect3:3)