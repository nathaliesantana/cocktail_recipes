class CocktailRecipes::scraper
  attr_accessor :cocktails_page

 def initialize(url)
   self.cocktails_page = url
 end

 def scrape_webpage
   site= Nokogiri::HTML(open(self.cocktails_page))
 end

 def scrape
   scrape_webpage
 end

end
