class Recipe < ApplicationRecord
    has_many :ingredients, through: :recipe_ingredients  
    belongs_to :user

    validates :dish_name, uniqueness: true

   
    
end
