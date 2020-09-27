class Recipe
    attr_reader :name, :description
    @@all =[]

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_item
        MenuItem.all.select { |menu_item| menu_item.recipe == self}
    end

    def restaurants
        menu_item.map { |recipe| recipe.restaurant }
    end

    def average_price
        menu_item.reduce(0){ |total, recipe| total + (recipe.price / menu_item.count) }
    end

    def highest_price
        menu_item.map.max_by { |recipe| recipe.price }
    end

    def cheapest_restaurant
        menu_item.map.min_by { |recipe| recipe.price }
    end

    # def self.inactive
    # end
end