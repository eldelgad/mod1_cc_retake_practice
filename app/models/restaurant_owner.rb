class RestaurantOwner
    attr_reader :name, :age
    @@all = []
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select { |restaurant| restaurant.owner == self}
    end

    def menu_items
        restaurants.map { |restaurant| restaurant.menu_items }
    end

    def self.average_age
        all.reduce(0){ |total, owner| total + (owner.age / all.count) }
    end

    # def sell_restaurant(restaurant, buyer)
    # end
end