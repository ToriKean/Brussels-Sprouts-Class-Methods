require 'pry'
class Ingredient
  def initialize(quantity, units, name)
    @quantity = quantity
    @units = units
    @name = name
  end

  SAFE = ["Brussels sprouts",
"spinach",
"eggs",
"milk",
"tofu",
"seitan",
"bell peppers",
"quinoa",
"kale",
"chocolate",
"beer",
"wine",
"whiskey"]

  def safe?
    if @name.include?[SAFE]
      puts "#{ingredient} is safe!"
    else
      puts "Not safe!"
    end
  end

  def summary
    "#{@quantity} #{@units} #{@name}"
  end
  binding.pry
end

class Recipe
  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}\n"
    puts "\nIngredients"
    @ingredients.each { |ingredient| puts "- #{ingredient.summary}"}
    puts "\nInstuctions"
    @instructions.each_with_index do |instruction, index|
      puts "#{index + 1}. #{instruction}"
    end
    return
  end
end
