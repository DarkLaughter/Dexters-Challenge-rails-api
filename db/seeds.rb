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

