class Recipe
    attr_accessor :title, :href, :ingredients

    @@all = []

    def initialize(recipe_list)
        recipe_list.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_input(recipe_title)
        self.all.detect do |recipe|
            recipe.title == recipe_title
        end
    end
end