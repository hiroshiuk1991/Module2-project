require 'faker'


50.times do User.create(
    username:Faker::TvShows::DrWho.character,
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    email:Faker::Internet.email,
    password:Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true)
)
end 
puts 'Users created'

10.times do 
    food = Faker::Food.dish
    user = User.all.sample


Recipe.create(
    dish_name: food, 
    user: user,
)

end 
puts 'Recipes created'

250.times do Ingredient.create(
    ingredient_name:Faker::Food.ingredient
)
end 
puts 'All seeded'

50.times do 
    recep = Recipe.all.sample
    ingred = Ingredient.all.sample


    List.create(
    ingredient: ingred, 
    recipe: recep,
)

end 


