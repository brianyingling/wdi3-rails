class AddArtistIdToPaintingsTable < ActiveRecord::Migration

  def change
    #adds col table, column (singular name of table + id), data type
    add_column :paintings, :artist_id, :integer
  end
end
