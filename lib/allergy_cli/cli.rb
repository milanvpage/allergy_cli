class CLI 
    #binding.pry
    def start
       puts "Welcome! I hope we can find you a recipe you love that matches your needs! Enter ingredients you would like to see in a Recipe and/or an Allergy that fits your recipe needs?".colorize(:color => :light_blue)
            
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip 
    end

    def greet(intolerance)
      API.get_data(intolerance)
      if intolerance == "exit"
         goodbye
      elsif Recipe.all.length != 0
        puts "Lets see what Yummy dishes we can find with #{intolerance}! Enter y to see list, enter exit to exit".colorize(:color => :green)
        menu
      
      else
        puts "Invalid entry lets bring you back to the start!"
        start
      end 
      

    end  

    def menu
        #enter allergy and print out list of allergy recipe matches
        #enter exit want them to exit
        #enter invalid message 
        input = user_input
        if input == "y"
            print_recipes
            
        elsif input == "exit"
            goodbye
        else
            #invalid message and let them keep choosing
            invalid
        end
    end

    def goodbye
        puts "Hope we could find you a recipe to fill your tummy with Love!".colorize(:color => :light_blue)
    end

    def invalid
        puts "Item not found? Enter y to try again!".colorize(:color => :light_blue)
      menu
    end

    def print_recipes
        Recipe.all.each.with_index(1) do |recipe, index|
            puts "#{index}. #{recipe.title}".colorize(:color => :red)

        end
        select_recipes
    end

    def select_recipes
        puts "Please enter the name of the Recipe you would like to know more information about".colorize(:color => :light_blue)
          input = user_input
          if Recipe.find_by_input(input)
          recipe = Recipe.find_by_input(input)
          else 
          recipe = input
          end
  
          recipe_details(recipe)
    end

    def recipe_details(recipe)
     #binding.pry
        if recipe == "exit"
          goodbye
        elsif recipe.class == Recipe
        puts ""
        puts ""
        puts "*************************".colorize(:color => :light_blue)
        puts "Title: #{recipe.title}".colorize(:color => :yellow)
        puts ""
        puts "URL: #{recipe.href}".colorize(:color => :yellow)
        puts ""
        puts "Ingredients: #{recipe.ingredients}".colorize(:color => :yellow)
        puts "*************************".colorize(:color => :light_blue)
        puts ""
        puts ""
        puts "Enter y to see more Recipes regarding the ingredients you supplied. Enter exit to exit the program/enter different ingredients and/or a different Allergy!".colorize(:color => :green)
        menu
        else
           invalid
        end
    end   


end