class CocktailRecipes::Recipes
 attr_accessor :name, :ingredients, :instructions , :url

 @@all = []

  def initialize(hash)
   hash.each do |key, value|
     self.send("#{key}=",value)
    end
    @ingredients = []
    @instructions = instructions
  end

  def self.all
   @@all
  end

 def save
   self.class.all.push(self)
 end

 def self.create(hash)
   recipe = self.new(hash)
   recipe.save
   recipe
 end

 def self.create_from_array(array)
   array.each do |hash|
     self.create(hash)
   end
  end
end
