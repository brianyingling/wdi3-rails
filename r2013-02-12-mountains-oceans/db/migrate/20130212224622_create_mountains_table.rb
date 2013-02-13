class CreateMountainsTable < ActiveRecord::Migration
 def change
    create_table :mountains do |t|
      t.string      :name
      t.integer     :height
      t.integer     :diff_tech
      t.string      :image
      t.string      :country
      t.string      :range
      t.timestamps
    end
  end
end
