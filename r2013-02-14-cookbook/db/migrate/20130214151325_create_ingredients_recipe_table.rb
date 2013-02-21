class CreateIngredientsRecipeTable < ActiveRecord::Migration
  def change
    # prevents primary key on a join table
    # DO NOT PUT A PRIMARY KEY ON JOIN TABLE, WILL CAUSE
    # RAILS TO GIVE INCONSISTENT RESULTS
    # M
    create_table :ingredients_recipes, :id=> false do |t|
      t.integer     :ingredient_id
      t.integer     :recipe_id
    end
  end
end
