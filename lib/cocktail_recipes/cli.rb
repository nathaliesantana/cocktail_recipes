class CocktailRecipes::Cli
  attr_accessor :cocktails_list

  @@cocktails_list = ["cocktail 1", "cocktail 2", "cocktail 3" ]

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
    if (1..@@cocktails_list.length).include? (input)
      puts @@cocktails_list[input-1]
      menu_options
    else
      invalid
    end
  end

  def menu_options
    puts "Would you like to see another recipe?"
    input = gets.strip.downcase
    input == "yes" ? main_menu : good_bye
  end

  def good_bye
    puts "Thank you for your visit."
    puts "You're welcome to come back anytime!"
  end

  def invalid
    puts "This is not an option.!!!!!!!!"
    main_menu
  end

  def display_cocktails_list
    @@cocktails_list.each.with_index do |c, i|
      puts "#{i+1}. #{c}"
    end
  end


end
