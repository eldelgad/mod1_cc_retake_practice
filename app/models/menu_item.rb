class MenuItem
    attr_accessor :restaurant, :recipe, :price
    @@all = []
    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        Restaurant.all.find { |restaurant| restaurant.owner }
    end

    def self.most_expensive_item
        self.all.select.max_by { |item| item.price }
    end
end