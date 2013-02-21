class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :phone
    end
  end
end
