class CreatePlanetsTable < ActiveRecord::Migration
  def change
    #creates a table called planets, t
    # refers to table
    create_table :planets do |t|
      #Rails knows that Postgres should take
      # varchar,so it converts it to varchar
      t.string :name
      t.text :image   #URL of the planet's image
      t.float :orbit
      t.float :mass
      t.integer :moons
      t.float :diameter
      t.timestamps
    end
  end

end
