require_relative './lib/cocktail_recipes/version'

Gem::Specification.new do |s|
  s.name        = 'cocktail_recipes'
  s.version     = CocktailRecipes::VERSION
  s.date        = '2018-09-05'
  s.summary     = "Reinvented Classic Cocktails"
  s.description = "Displays a list of Classic cocktails recipes with a twist"
  s.authors     = ["Nathalie Santana"]
  s.email       = 'nathalie.scruz@gmail.com'
  s.files       = ["lib/cocktail_recipes.rb", "lib/cocktail_recipes/cli.rb", "lib/cocktail_recipes/scraper.rb", "lib/cocktail_recipes/recipes.rb",  "lib/cocktail_recipes/version.rb"]

  s.license     = 'MIT'
  s.executables << 'CocktailsRecipes'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 0"
  s.add_development_dependency "nokogiri", "~> 0"
  s.add_development_dependency "pry", "~> 0"
end
