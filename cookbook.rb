class Cookbook

	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipes)
		@recipes.push(recipes)
		puts "Added a recipe to the collection of #{@title}: #{recipes.title}"

	end

	def recipe_titles
		@recipes.each { |recipes| Kernel.puts "#{recipes.title}" }
	end

	def recipe_ingredients
		@recipes.each { |recipes| Kernel.puts "This are the ingredients for #{recipes.title}: #{recipes.ingredients}" }
	end

end

class Recipe

	attr_accessor :title
	attr_accessor :steps
	attr_accessor :ingredients

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		Kernel.puts "1. #{@title}\n" + "2. #{@ingredients.join(", ")}\n" + "3. #{@steps.join(", ")}"
	end

end