class AddInfosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :birthday, :date
  end
end
