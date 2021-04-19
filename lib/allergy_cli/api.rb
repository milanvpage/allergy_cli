class API

    def self.get_data(input)
        response = RestClient.get("http://www.recipepuppy.com/api/?q=#{input}")
        recipe_list = JSON.parse(response)["results"]
         recipe_list.each do |recipe|
             #binding.pry
            Recipe.new(recipe)
         end
 #binding.pry
     end
 end