# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# = [user seed] ================
puts "cleaning the db"
User.destroy_all
puts "users deleted"
Recipe.destroy_all
puts "recipes deleted"

puts 'creating 4 users'

nana = User.create!(
  username: 'nana',
  email: 'nana@gmail.com',
  password: 'nanana',
  profile: "Hello, I'm Nana. Making cake is one of my hobbies! Nice to meet you:)"
)

nini = User.create!(
  username: 'nini',
  email: 'nini@gmail.com',
  password: 'ninini',
  profile: "Heyyy I'm Nini! I'm looking for friends here! I like drinking so let's have a beer together!!!",
  profile_img_id: 'nini.png'
)

nunu = User.create!(
  username: 'nunu',
  email: 'nunu@gmail.com',
  password: 'nununu',
  profile: "Hello, I'm Nunu. Making cake is one of my hobbies! Nice to meet you:)",
  profile_img_id: 'nunu.png'
)

nene = User.create!(
  username: 'nene',
  email: 'nana@gmail.com',
  password: 'nenene',
  profile: "Hi, I'm Nene. I love coffee and looking for good cafe:)",
  profile_img_id: 'nene.png'
)

# = [recipe seed] ================
puts 'creating 10 recipes'

recipe_1 = Recipe.create!(
  title: "Omelette",
  body: "1. Beat the eggs: Use two or three eggs per omelette, depending on how hungry you are. Beat the eggs lightly with a fork.
    2. Melt the butter: Use an 8-inch nonstick skillet for a 2-egg omelette, a 9-inch skillet for 3 eggs. Melt the butter over medium-low heat, and keep the temperature low and slow when cooking the eggs so the bottom doesn’t get too brown or overcooked.
    3. Add the eggs: Let the eggs sit for a minute, then use a heatproof silicone spatula to gently lift the cooked eggs from the edges of the pan. Tilt the pan to allow the uncooked eggs to flow to the edge of the pan.
    4. Fill the omelette: Add the filling—but don’t overstuff the omelette—when the eggs begin to set. Cook for a few more seconds
    5. Fold and serve: Fold the omelette in half. Slide it onto a plate with the help of a silicone spatula.",
  image_id: "recipe_1.png",
  updated_at: '2022-09-01 12:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.png",
  updated_at: '2022-10-01 10:21'
)

recipe_2 = Recipe.create!(
  title: "Coffee Smoothie",
  body: "1. Combine the chia seeds and milk in the blender carafe. Let it sit for 10 minutes so the seeds absorb some of the milk and soften, making for a creamier blended drink.
  2. Add the coffee, banana chunks, almond butter, vanilla extract, Medjool date, cocoa powder, and ice to the blender.
  3. Start the blender on low speed and gradually increase the speed until everything blends into a creamy, smooth consistency. Be sure to scrape down the sides and run the blender again as needed.",
  image_id: "recipe_2.webp",
  updated_at: '2021-08-30 08:19'
)

recipe_3 = Recipe.create!(
  title: "Plantain Frittata",
  body: "1. Preheat the oven to 400°F
  2. Crack the eggs into a medium bowl and whisk until there are no egg whites visible and it begins to look a little frothy. Set aside.
  3. Add 2 tablespoons of olive oil to a cast-iron pan over medium heat. Add the bell peppers, scallions, and tomatoes. Cook, until the peppers become brighter in color and the scallions become slightly softened, 1 to 2 minutes.
  4. Pour the whisked eggs into the pan over the vegetables. Layer the plantains over the eggs in a circular pattern until the pan is entirely filled.
  5. Drizzle the remaining olive oil (about a teaspoon), over the top of the plantains. Season with the remaining 1/2 teaspoon salt and 1/2 teaspoon pepper. Garnish with chopped fresh rosemary.
  6. Bake frittata for 15 minutes. Once its fully cooked, you will notice that the frittata will have risen, the plantains will be golden brown and slightly crispy.
  7. Cut the frittata into quarters and serve 2 quarters per person. Sprinkle a pinch of chili flakes (optional) and serve alongside your favorite salad.",
  image_id: "recipe_3.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)

recipe_1 = Recipe.create!(
  title: "",
  body: "",
  image_id: "recipe_1.webp",
  updated_at: '2022-10-01 10:21'
)
