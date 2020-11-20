# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

require 'json'
require 'open-uri'

filepath = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
url = open(filepath).read
drinks = JSON.parse(url)

Cocktail.destroy_all

for i in 1..5
  Ingredient.create!(name: drinks["drinks"].sample["strIngredient1"]).save
end


cocktail_first = Cocktail.new(name: 'Mojito', picture: "https://assets.afcdn.com/recipe/20180705/80255_w1024h768c1cx2774cy1849.webp")
cocktail_second = Cocktail.new(name: 'Moscow Mule', picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0NovBVSu2LVe6nAw7P-ICbLzrCsqb17Svkg&usqp=CAU")
cocktail_first.save
cocktail_second.save
