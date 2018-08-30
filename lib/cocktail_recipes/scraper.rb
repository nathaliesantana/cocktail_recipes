class CocktailRecipes::Scraper
  attr_accessor :cocktails_page

 def initialize(url)
   self.cocktails_page = url
 end

 def scrape_homepage
   recipes = []
   site= Nokogiri::HTML(open(self.cocktails_page))
   site.css("li.rsw-teaser").each do |li|
     recipe_hash = {}
     recipe_hash[:name]= li.css("h3").text
     recipe_hash[:url]= "https://www.foodandwine.com#{li.css("a").attribute('href').text}"
     recipes.push(recipe_hash)
   end
   CocktailRecipes::Recipes.create_from_array(recipes)
 end

 def scrape_profile
   CocktailRecipes::Recipes.all.each do |recipe|
     site= Nokogiri::HTML(open(recipe.url))
     ingredients = site.css('div.ingredients').text.gsub(/[\n\r]/, '\n' => '', '\r' => '')
     binding.pry
   end
 end

 def scrape
   scrape_homepage
   scrape_profile
 end

end
