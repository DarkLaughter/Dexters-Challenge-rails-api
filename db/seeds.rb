# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Order of creation 

User.create(name:"Ramon", username:"ramon20", password:"abc12")

category = Category.create(name:"history")
quiz = Quiz.create(level: 1, category_id: category.id)
Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)
Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)
Question.create(quiz_id: quiz.id, q_text:"How many stars are featured on New Zealand&#039;s flag?", correct: 4, incorrect1: 5, incorrect2: 2, incorrect3:3)

    