# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.delete_all
Recipe.delete_all
Ingredient.delete_all



b1 = Book.create(:title=>'La Cuisine: Everyday French Home Cooking',
  :cuisine=>'French',
  :chef=>'Francois Bernard',
  :image=>'http://ecx.images-amazon.com/images/I/51LM%2BJCUQEL._SS500_.jpg')

r1 = Recipe.create(:name=>'Beef Bourguignon',
  :course=>'Dinner',
  :cooktime=>30+180+(2*60*24),
  :instructions=>"For marinade: In a large bowl, combine the wine, cognac, onions, carrots, parsley, bay leaf, garlic, peppercorns and salt. Mix well and add the cubed beef. Cover and marinate in the refrigerator for 2 days.
Preheat oven to 300 degrees F (150 degrees C).
For Bourguignon: Strain the meat from the vegetables and marinade; reserve marinade. Dry meat with paper towels. Heat 2 tablespoons of the oil in a large skillet over medium high heat. Add the meat and saute for 10 minutes, or until browned on all sides. Transfer meat to a separate medium bowl with a slotted spoon and set aside.
In the same skillet, add the bacon and saute until lightly browned. Transfer the bacon to the bowl with the meat. Drain the skillet and return it to the heat. Pour a cup of marinade into the skillet to deglaze the skillet, scraping the bottom to loosen up all the little bits. Return this liquid to the reserved marinade.
Heat the remaining oil in the skillet. Add the onion and carrot from the marinade, along with the additional onion that you've chopped, and saute for 5 minutes, or until tender. Transfer this mixture to the bowl with the meat and bacon, again using a slotted spoon, and return skillet to the heat. Add the flour to the skillet, combining with the oil and stir until well mixed and brown, about 2 minutes.
Now add the tomato paste, garlic, beef broth, reserved marinade and salt and pepper to taste. Bring to a boil and whisk to remove any flour lumps. Add this to the meat and vegetable mixture. Place entire mixture into a 9x13 baking dish.
Bake at 300 degrees F (150 degrees C) for 3 hours, stirring occasionally and adding water as needed. Season with salt and pepper to taste.
About 15 minutes before meat is done baking, melt butter in the skillet over medium high heat. Add the mushrooms and saute for 5 to 10 minutes, or until lightly browned. When meat is done, add the mushrooms to the meat mixture, stir well and let sit for about 15 minutes",
  :image=>'http://images.media-allrecipes.com/userphotos/250x250/00/61/60/616049.jpg')

r2 = Recipe.create(:name=>'French Baguettes',
  :course=>'Lunch',
  :cooktime=>40,
  :instructions=>"Place 1 cup water, bread flour, sugar, salt and yeast into bread machine pan in the order recommended by manufacturer. Select Dough cycle, and press Start.",
  :image=>'http://images.media-allrecipes.com/userphotos/250x250/00/10/99/109996.jpg')

r3 = Recipe.create(:name=>'Chicken Cordon Bleu',
  :course=>'Dinner',
  :cooktime=>60,
  :instructions=>"Pound chicken breasts if they are too thick. Place a cheese and ham slice on each breast within 1/2 inch of the edges. Fold the edges of the chicken over the filling, and secure with toothpicks. Mix the flour and paprika in a small bowl, and coat the chicken pieces.
Heat the butter in a large skillet over medium-high heat, and cook the chicken until browned on all sides. Add the wine and bouillon. Reduce heat to low, cover, and simmer for 30 minutes, until chicken is no longer pink and juices run clear.
Remove the toothpicks, and transfer the breasts to a warm platter. Blend the cornstarch with the cream in a small bowl, and whisk slowly into the skillet. Cook, stirring until thickened, and pour over the chicken. Serve warm.",
  :image=>'http://images.media-allrecipes.com/userphotos/250x250/00/40/93/409340.jpg')







i1 = Ingredient.create(:name=>'chicken breast halves, boneless',
  :measurement=>'6',
  :cost=>5.00,
  :image=>'http://www.trucchis.com/wp/wp-content/uploads/2010/03/Chicken-Breast-Cutlets-WP.jpg')



i2 = Ingredient.create(:name=>'Cheese, Swiss',
  :measurement=>'6 slices',
  :cost=>1.00,
  :image=>'http://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Swiss_cheese_cubes.jpg/600px-Swiss_cheese_cubes.jpg')

i3 = Ingredient.create(:name=>'Ham Slices',
  :measurement=>'6 slices',
  :cost=>12.00,
  :image=>'http://www.omahasteaks.com/gifs/big/pk027.jpg')

i4 = Ingredient.create(:name=>'All-Purpose Flour',
  :measurement=>'3 tablespoons',
  :cost=>3.00,
  :image=>'http://www.mytenda.com/tenda/images/goldmedalflour.jpg')

i5 = Ingredient.create(:name=>'Butter',
  :measurement=>'6 tablespoons',
  :cost=>2.00,
  :image=>'http://upload.wikimedia.org/wikipedia/commons/f/fd/Western-pack-butter.jpg')


i6 = Ingredient.create(:name=>'Dry White Wine',
  :measurement=>'1/2 cup',
  :cost=>12.00,
  :image=>'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS1TWlNrVbvDusFFyaahf-DcoTmrArfGpxntVs-Ocp2cvXoSPmwYQ')


# Assignments -- Rails automatically saves array manipulations, but:
# if assigning other data types, call save
b1.recipes = [r1, r2]
b1.recipes << r3

# many-to-many relationships
# one recipe has many ingredients
# one ingredient belongs to many recipes
r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i3, i4, i5, i6]
r3.ingredients = [i2, i3, i4]




