class CocktailRecipes::Cli

  def welcome
    CocktailRecipes::Scraper.new("https://www.foodandwine.com/cocktail-recipes").scrape
    puts "Hi, Welcome to Reinvented Classic Cocktails"
    main_menu
  end

  def main_menu
    puts "Here is a list of all of our cocktails:"
    display_cocktails_list
    puts "Type the number of the cocktail you would like to learn."
    input = gets.strip.to_i
    if (1..CocktailRecipes::Recipes.all.length).include?(input)
      puts CocktailRecipes::Recipes.all[input-1].name.upcase
      puts ""
      puts "Ingredients"
      puts CocktailRecipes::Recipes.all[input-1].ingredients
      puts ""
      puts "Instructions"
      puts CocktailRecipes::Recipes.all[input-1].instructions
      puts ""
      menu_options
    else
      invalid
    end
  end

  def menu_options
    puts "Would you like to see another recipe?"
    puts "Type (Yes or No) "
    input = gets.strip.downcase
    input == "yes" ? main_menu : good_bye
  end

  def good_bye
    puts "Thank you for your visit."
    puts "You're welcome to come back anytime!"
  end

  def invalid
    puts "Im sorry. This is not an option."
    puts "Please try againg."
    main_menu
  end

  def display_cocktails_list
    CocktailRecipes::Recipes.all.each.with_index do |c, i|
      puts "#{i+1}. #{c.name}"
    end
  end


end
