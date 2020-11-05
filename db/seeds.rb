# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "rest-client"
Ingredient.destroy_all
response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
repos = JSON.parse(response)
puts repos
repos["drinks"].each do |drink|
  puts drink
  ingredient = Ingredient.new(
    name: drink["strIngredient1"]
  )
  ingredient.save!
end
