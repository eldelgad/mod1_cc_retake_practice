# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


#### RESTAURANT OWNER ####

owner1 = RestaurantOwner.new("Rafiki", 52)
owner2 = RestaurantOwner.new("Alex", 47)
owner3 = RestaurantOwner.new("Mariano", 39)

#### RESTATURANT ####

restaurant1 = Restaurant.new(owner1, "Pollo Loco", 3)
restaurant2 = Restaurant.new(owner2, "Sweets & Treats", 4)
restaurant3 = Restaurant.new(owner3, "Mac & Snack", 5)

#### RECIPE ####

recipe_1 = Recipe.new("Chicken", "Salt, Pepper, Chicken")
recipe_2 = Recipe.new("Choclate Cake", "Choclate, Flour, Eggs")
recipe_3 = Recipe.new("Mac and Cheese", "Maccaroni, Cheese, Milk")
recipe_4 = Recipe.new("BLT", "Bacon, Lettuce, Tomatoes, Bread")

#### MENU ITEM ####

menu_item1 = MenuItem.new(restaurant1, recipe_1, 12.95)
menu_item2 = MenuItem.new(restaurant2, recipe_2, 11.95)
menu_item3 = MenuItem.new(restaurant3, recipe_3, 10.49)
menu_item4 = MenuItem.new(restaurant1, recipe_2, 9.95)
menu_item5 = MenuItem.new(restaurant2, recipe_3, 8.49)
menu_item6 = MenuItem.new(restaurant3, recipe_1, 7.95)

##### BUYER #####

buyer1 = "Elias"

### Initializers, Readers, and Writers
# - For these, the initialize is described as well was what attribute can(not) be changed after initialization. Use those descriptions to determine the appropriate readers and writers.


# #### Recipe
# - `Recipe#initialize(name, description)`
#   - A recipe should be initialized with a `name` (string) and a `description` (string).
#   - The name **cannot** be changed after the recipe is initialized.
#   - The description can be changed after the recipe is initialized.
#   - Both name and description are readable



# - `Recipe.all`
#   - Returns an array of all recipe instances that have been created.

# #### Restaurant
# - `Restaurant#initialize(owner, name, star_rating)`
#   - A restaurant should be initialized with a `RestaurantOwner` instance, a `name` (string) and a `star_rating` (integer).
#   - The name and star_rating can be changed after the restaurant is initialized.
#   - Both name and star_rating are readable.



# - `Restaurant.all`
#   - Returns an array of all restaurant instances that have been created.

# #### RestaurantOwner
# - `RestaurantOwner#initialize(name, age)`
#   - A restaurant_owner should be initialized with a `name` (string) and an `age` (integer).
#   - The name and age can be changed after the restaurant_owner is initialized.
#   - Both name and age are readable.



# - `RestaurantOwner.all`
#   - Returns an array of all restaurant_owner instances that have been created.

# #### MenuItem
# - `MenuItem#initialize(restaurant, recipe, price)`
#   - A menu_item should be initialized with a `Restaurant` instance, a `Recipe` instance and a `price` (float).
#   - The price can be changed after the menu_item is initialized.



# - `MenuItem.all`
#   - Returns an array of all menu_item instances that have been created.



# ### Object Relationship Methods

# #### Recipe
# - `Recipe#menu_items`
#   - returns an array of all the `MenuItem` instances for the `Recipe`.
# - `Recipe#restaurants`
#   - returns an array of all the `Restaurant` instances that have the `Recipe` on their menu.

# #### Restaurant
# - `Restaurant#menu_items`
#   - returns an array of all the `MenuItem` instances for the `Restaurant`.
# - `Restaurant#owner`
#   - returns the `RestaurantOwner` instance associated with the `Restaurant` instance
# - `Restaurant#recipes`
#   - returns an array of all the `Recipe` instances that are on this `Restaurant`s menu.

# #### RestaurantOwner
# - `RestaurantOwner#restaurants`
#   - returns an array of `Restaurant` instances associated with the `RestaurantOwner` instance.
# - `RestaurantOwner#menu_items`
#   - returns an array of `MenuItem` instances associated with any of the `RestaurantOwner`s `Restaurant` instances.

# #### MenuItem
# - `MenuItem#recipe`
#   - returns the `Recipe` instance associated with the `MenuItem` instance
# - `MenuItem#restaurant`
#   - returns the `Restaurant` instance associated with the `MenuItem` instance
# - `MenuItem#owner`
#   - returns the `Owner` instance associated with the `MenuItem` instance



# ### Aggregate and Association Methods

# #### Recipe
# - `Recipe#average_price`
#     - returns the average price (integer) for all `MenuItem` instances of this `Recipe` instance. 
# - `Recipe#highest_price`
#   - returns the highest price (integer) for all `MenuItem` instances of this `Recipe` instance. 
# - `Recipe#cheapest_restaurant`
#   - returns the `Restaurant` instance where this `Recipe` instance is the cheapest. 
# - `Recipe.inactive`
#   - returns an array of `Recipe` instances that are not currently being sold at any restaurants.

# #### Restaurant
# - `Restaurant#has_dish?(recipe)`
#     - returns `true` if the dish is on the menu at the given restaurant and `false` if it is not. 
# - `Restaurant.highest_rated`
#     - returns the highest rated `Restaurant` instance.

# #### RestaurantOwner
# - `RestaurantOwner.average_age`
#   - returns the average age of all the `RestaurantOwner`s
# - `RestaurantOwner#sell_restaurant(restaurant, buyer)`
#   - transfers ownership of a `Restaurant` instance (which must belong to the current user) to the `buyer` which is a `RestaurantOwner` instance. 

# #### MenuItem
# - `MenuItem.most_expensive_item`
#     - returns the most expensive `MenuItem` instance



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
