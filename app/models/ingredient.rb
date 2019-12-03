class Ingredient < ApplicationRecord
    has_many :recipes, through: :recipeingredients 
    has_many :users, through: :recipes 
    

end
