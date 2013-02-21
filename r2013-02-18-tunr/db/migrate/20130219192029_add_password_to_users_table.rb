class AddPasswordToUsersTable < ActiveRecord::Migration
  def change
    #table users, name of column, type of column
    add_column :users, :password_digest, :string
  end
end
