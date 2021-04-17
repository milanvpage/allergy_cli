class CLI 
    #binding.pry
        def start
           puts "Welcome! I hope we can find you a recipe you love that matches your needs! Enter ingredients you would like to see in a Recipe and/or a Recipe to fit your Allergy needs?".colorize(:color => :light_blue)
            
            input = user_input
            greet(input)
        end
end