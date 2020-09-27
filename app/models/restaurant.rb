class Restaurant
    attr_accessor :owner, :name, :star_rating
    @@all = []
    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select { |item| item.restaurant == self}
    end

    def recipes
        menu_items.map { |restaurant| restaurant.recipe } 
    end

    # def has_dish?(recipe)

    # end

    def self.highest_rated
        self.all.max_by { |restaurant| restaurant.star_rating }
    end
end