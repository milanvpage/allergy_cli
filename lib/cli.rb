class CLI 
    #binding.pry
        def start
           puts "Welcome! I hope we can find you a recipe you love that matches your needs! Enter ingredients you would like to see in a Recipe and/or a Recipe to fit your Allergy needs?".colorize(:color => :light_blue)
            
            input = user_input
            greet(input)
        end

        def user_input
            gets.strip 
          end

          def greet(intolerance)
            API.get_data(intolerance)
            if Recipe.all.length != 0
              puts "Lets see what Yummy dishes we can find with #{intolerance}! Enter y to see list, enter exit to exit".colorize(:color => :green)
              menu
            else
              puts "Invalid entry lets bring you back to the start!"
              start
            end
          end  
end