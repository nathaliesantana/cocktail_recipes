 class CocktailsRecipes::Recipes
   attr_accessor :name, :ingredients, :instructions , :url

   def initialize(name, ingredients, instructions, url )
     @name = name
     @instructions = instructions
     @ingredients = ingredients
     @url = url

   end
end
