# AllergyCli

In this CLI app, our CLI is grabbing recipes from  "http://www.recipepuppy.com" based off the input we give it. 
This app was originally created to output recipes based on an Allergy type inputed to the server, but instead it can do so much more. 
This CLI can take in an input of ingredients (seperated by commas) and output a list of recipes based off any valid ingredients you inputted to the command line. 
Therefore Allergy_CLI can give you Allergy friendly recipes on top of what you got hiding inside your pantry!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'allergy_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install allergy_cli

## Usage

Step 1. run "ruby bin/run" in your terminal to get the app started.
Step 2. The server will ask you "Enter ingredients you would like to see in a Recipe and/or an Allergy that fits your recipe needs?"
Step 3. Type ingredients, or intolerance into your terminal: seperate multiple inputs wiht commas, and type your intolernace with the word "free" after it. Example: "Gluten Free"
Step 4. The app will say/ask "Lets see what Yummy dishes we can find with "input goes heres"! Enter y to see list, enter exit to exit"
Step 5. Type "y" to see recipes regarding your allergy or ingredients you provided.
Step 6. The app will ask you to "Please enter the name of the Recipe you would like to know more information about", choose a name from the list of recipes provided in your terminal.
Step 7. Type the name of the recipe you'd like to know more information about.
Step 8. Based on the recipe name provided, your terminal should then output a "Title", "URL", and "ingredients" of that specific recipe.
Step 9. The app will then ask you to "Enter y to see more Recipes regarding the ingredients you supplied. Enter exit to exit the program/enter different ingredients and/or a different Allergy!"
Step 10. Type "y" or "enter, to get either outcome.

            
    

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/allergy_cli.
