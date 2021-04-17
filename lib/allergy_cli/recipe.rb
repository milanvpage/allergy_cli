class Recipe
    attr_accessor :title, :href, :ingredients

    @@all = []

    def initialize(recipe_list)
        recipe_list.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
    end
end