# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# = [user seed] ================
puts 'cleaning the db'
User.delete_all
puts 'users deleted'
Recipe.delete_all
puts 'recipes deleted'

puts 'creating 4 users'

nana = User.create!(
  username: 'nana',
  email: 'nana@gmail.com',
  password: 'nanana',
  profile: "Hello, I'm Nana. Making cake is one of my hobbies! Nice to meet you:)",
  profile_img: File.open('./app/assets/images/no-image.jpeg')
)

nini = User.create!(
  username: 'nini',
  email: 'nini@gmail.com',
  password: 'ninini',
  profile: "Heyyy I'm Nini! I'm looking for friends here! I like drinking so let's have a beer together!!!",
  profile_img: File.open('./app/assets/images/nini.png')
)

nunu = User.create!(
  username: 'nunu',
  email: 'nunu@gmail.com',
  password: 'nununu',
  profile: "Hello, I'm Nunu. Making cake is one of my hobbies! Nice to meet you:)",
  profile_img: File.open('./app/assets/images/nunu.png')
)

nene = User.create!(
  username: 'nene',
  email: 'nene@gmail.com',
  password: 'nenene',
  profile: "Hi, I'm Nene. I love coffee and looking for good cafe:)",
  profile_img: File.open('./app/assets/images/nene.png')
)

# = [recipe seed] ================
puts 'creating 10 recipes'

recipe_1 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Omelette",
  body: "1. Beat the eggs: Use two or three eggs per omelette, depending on how hungry you are. Beat the eggs lightly with a fork.
    2. Melt the butter: Use an 8-inch nonstick skillet for a 2-egg omelette, a 9-inch skillet for 3 eggs. Melt the butter over medium-low heat, and keep the temperature low and slow when cooking the eggs so the bottom doesn’t get too brown or overcooked.
    3. Add the eggs: Let the eggs sit for a minute, then use a heatproof silicone spatula to gently lift the cooked eggs from the edges of the pan. Tilt the pan to allow the uncooked eggs to flow to the edge of the pan.
    4. Fill the omelette: Add the filling—but don’t overstuff the omelette—when the eggs begin to set. Cook for a few more seconds
    5. Fold and serve: Fold the omelette in half. Slide it onto a plate with the help of a silicone spatula.",
  image: File.open('./app/assets/images/recipe_1.png'),
  updated_at: '2022-09-01 12:21'
)

recipe_2 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Coffee Smoothie",
  body: "1. Combine the chia seeds and milk in the blender carafe. Let it sit for 10 minutes so the seeds absorb some of the milk and soften, making for a creamier blended drink.
  2. Add the coffee, banana chunks, almond butter, vanilla extract, Medjool date, cocoa powder, and ice to the blender.
  3. Start the blender on low speed and gradually increase the speed until everything blends into a creamy, smooth consistency. Be sure to scrape down the sides and run the blender again as needed.",
  image: File.open('./app/assets/images/recipe_2.webp'),
  updated_at: '2021-08-30 08:19'
)

recipe_3 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Plantain Frittata",
  body: "1. Preheat the oven to 400°F
  2. Crack the eggs into a medium bowl and whisk until there are no egg whites visible and it begins to look a little frothy. Set aside.
  3. Add 2 tablespoons of olive oil to a cast-iron pan over medium heat. Add the bell peppers, scallions, and tomatoes. Cook, until the peppers become brighter in color and the scallions become slightly softened, 1 to 2 minutes.
  4. Pour the whisked eggs into the pan over the vegetables. Layer the plantains over the eggs in a circular pattern until the pan is entirely filled.
  5. Drizzle the remaining olive oil (about a teaspoon), over the top of the plantains. Season with the remaining 1/2 teaspoon salt and 1/2 teaspoon pepper. Garnish with chopped fresh rosemary.
  6. Bake frittata for 15 minutes. Once its fully cooked, you will notice that the frittata will have risen, the plantains will be golden brown and slightly crispy.
  7. Cut the frittata into quarters and serve 2 quarters per person. Sprinkle a pinch of chili flakes (optional) and serve alongside your favorite salad.",
  image: File.open('./app/assets/images/recipe_3.webp'),
  updated_at: '2022-10-01 10:21'
)

recipe_4 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Spicy Creamed Corn Linguine",
  body: "1. Bring a large pot (about 4 quarts) of salted water to a boil over high heat. Cook linguine according to the package instructions until al dente. Save 1 cup of the pasta cooking water and set aside. Then drain the pasta in a colander and return it to the pot.
  2. In a large bowl, stand the corn vertically and use a small sharp knife to cut downward to remove the kernels off the corn. Using the back of the knife, scrape the cob downward to scrape off any liquid. Discard the cob and set the corn aside.
  3. In a large nonstick skillet over medium-high heat, heat the olive oil. Add the shallots and garlic, and cook for about 2 minutes, stirring constantly with a wooden spoon, until translucent.
  4. Stir in the corn (including the liquid you scraped from the cobs) and salt. Cook for 4 to 5 minutes, until the corn becomes tender, scraping the bottom of the skillet often so that it doesn’t burn. Turn the heat off.
  5. Scoop out 1 cup cooked corn and set aside. Scrape the remaining into a blender with the adobo peppers, adobo sauce, and 1/2 cup of the reserved pasta cooking water. Blend on medium-high until somewhat smooth with a little texture, 30 to 45 seconds.
  6. Return the blended corn and reserved whole corn kernels to the skillet. Add the cream and bring to a simmer. Cook, stirring occasionally, until thickened, about 5 minutes. Add a few tablespoons of the reserved pasta water to loosen if it thickens too much.",
  image: File.open("./app/assets/images/recipe_4.webp"),
  updated_at: '2019-02-14 12:26'
)

recipe_5 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Buckwheat Waffles",
  body: "1. Turn on your waffle maker and set to medium.
  2. In a large bowl, whisk together the buckwheat flour, baking powder, baking soda, salt, and cinnamon.
  3. Place the egg whites in a medium bowl and beat with a hand mixer or egg beater. Sprinkle in the sugar as you beat the egg whites. Beat egg whites until you have soft peaks.
  4. In a medium bowl, whisk together the egg yolks, melted butter, yogurt, milk, and water
  5. Pour the yogurt/milk/butter/egg mixture into the buckwheat flour mixture and stir until just combined. It's okay if it's a little lumpy.
  6. Stir a third of the beaten egg whites into the batter until completely incorporated. Gently fold the remaining beaten egg whites into the batter until just combined, and there are no streaks of egg whites. Be gentle so that you do not deflate the egg whites too much.
  7. Working in batches, pour or spoon the batter into the wells of the preheated waffle maker, until the batter almost come to the edges. You will know if you've over-filled it because the batter will spill out of the waffle maker. No harm done, but it's a little messy.",
  image: File.open("./app/assets/images/recipe_5.webp"),
  updated_at: '2022-03-31 07:51'
)

recipe_6 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Special Burger",
  body: "1. Put the cold ground beef in mixing bowl. Sprinkle the other ingredients evenly over top. Fold the meat over a few times to get everything incorporated. This entire process should only take about 30 to 45 seconds. Don’t over handle the meat.
  2. Rather than forming the patties in your hand, form them on a tray. This makes it easier to shape the patties without over-handling or warming the meat. I like to use a cookie sheet lined with parchment paper, but any tray or platter will do.On the tray, divide the meat into 6 equal parts (about 5 1/4 ounces each). Gently form each portion into a patty that is 4-inches across with 1-inch sides and a shallow depression in the middle (see photos below). You want the outer 1/2 inch of the patty to be slightly taller than the inside. This keeps the patty from shrinking too much and from puffing up in the center during grilling.Cover the patties with plastic wrap and transfer to the fridge while you heat up your grill and butter your buns.
  3. Heat a gas or charcoal grill to 450 to 500°F, or hot enough that you can only hold your hand above the grill grates for about 1 second.
  4. Place patties on the grill over direct heat. Cook to your desired doneness.
  5. When you have about 1 minute left on the cooking time, add the cheese to the burgers and the buttered buns to the grill over indirect heat.
  6. Remove burgers and buns from grill and transfer to a clean platter. Let the burgers rest for 1 minute before serving.
  7. Serve with tomato jam, mayonnaise, bacon jam, garlic aioli, blue cheese sauce, sautéed mushrooms, Thousand Island, or the classic and always wonderful lettuce, tomato, pickles, and red onion.",
  image: File.open("./app/assets/images/recipe_6.webp"),
  updated_at: '2021-12-01 09:32'
)

recipe_7 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Broiled Grapefruit",
  body: "1. To make it easier for the grapefruit halves to sit in the pan, you may want to cut 1/4 inch off the bottom of each half, so they don't wobble.
  2. To make it easier to remove the grapefruit segments with a spoon once the grapefruit is cooked, use a sharp paring knife to cut around the edges of the fruit, where the fruit meets the rind.
  3. Then gently cut inside the grapefruit, along the edges of the segments. Don't cut all the way through the grapefruit, just to the rind if you can.
  4. Line a broiling or roasting pan with foil or parchment paper (foil works better, doesn't burn). Place the grapefruit halves, cut side up in the pan.
  5. Spread brown sugar over the top of the exposed fruit (not the rind), about 2 to 3 teaspoons of brown sugar per half (more or less to taste). Yellow grapefruit tends to be more sour than ruby red grapefruit, so you may want to use more sugar for yellow than for red grapefruit.
  6. Place under a broiler for 3 to 5 minutes, until the brown sugar is bubbly and beginning to brown and caramelize.Remove from oven. Let cool for a minute. Eat while still warm.",
  image: File.open("./app/assets/images/recipe_7.webp"),
  updated_at: '2022-02-22 22:22'
)

recipe_8 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Grapefruit Shandy",
  body: "1. In a 12-ounce glass, pour in the beer and grapefruit juice or soda. Gently stir to combine. Garnish with a grapefruit slice and mint, if desired.
  2. Serve cold.",
  image: File.open("./app/assets/images/recipe_8.webp"),
  updated_at: '2022-10-09 21:00'
)

recipe_9 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Grilled Peaches",
  body: "1. Preheat the grill to medium-high heat, at 400°F.
  2. In a small bowl, whisk together the brown sugar, granulated sugar, cinnamon, and salt. Set aside.
  3. Brush the cut side of the peaches with the melted butter. Place the peaches on the hot grill, cut side-down, and cook for 2 to 3 minutes, until you can see clear grill marks. The grill remains uncovered the whole time. Flip and cook them cut side-up for 2 minutes.
  4. To serve, place a grilled peach half on a plate and sprinkle 1/2 tablespoon brown sugar mixture on top while the peach is still warm. Top with a scoop of vanilla ice cream. Serve and enjoy!
  5. Leftovers can be stored in an airtight container in the fridge for up to 3 days. To reheat the peaches, place them in a 350°F oven for 10 minutes or in the microwave for 1 minute. They are also great served cold!",
  image: File.open("./app/assets/images/recipe_9.webp"),
  updated_at: '2022-05-05 15:01'
)

recipe_10 = Recipe.create!(
  user_id: User.offset(rand(User.count)).first.id,
  title: "Plum Walnut Skillet Cake",
  body: "1. Preheat the oven to 350ºF.
  2. Generously butter a 10-inch ovenproof skillet with a heatproof handle or a 9-inch cake pan. Halve, pit, and thinly slice the plums.
  3. In a food processor or a nut mill, very finely chop the walnuts. Transfer to a bowl.
  4. Add the butter and sugar to the bowl of the food processor and process until creamy, 30 to 60 seconds.
  5. Add the eggs one at a time, and process after each addition, until fluffy. Add the lemon zest, vanilla, flour, baking powder and salt, and pulse just until the batter is smooth.
  6. Scrape the batter into the skillet and smooth the top with the back of a spoon.
  7. Lay slices of plums in a ring around the outside edge of the pan, overlapping the slices slightly. Arrange a second ring of slices inside the first, and then fill in the very middle of the cake with the remaining slices. Sprinkle with the turbinado sugar.
  8. Begin checking the cake around 35 minutes, and continue baking (checking every 5 to 10 minutes) until the top is browned and a toothpick inserted into the middle of the cake comes out clean. Total cooking time is typically 40 to 50 minutes.
  9. The cake is sweet enough as it is, but if you want to add a little shine for an even more beautiful presentation, heat the honey in the microwave for 10 seconds and brush the cake with it.",
  image: File.open("./app/assets/images/recipe_10.webp"),
  updated_at: '2022-06-27 14:50'
)
