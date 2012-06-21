class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id, :friend_id, :null => false
      t.boolean :is_accepted, :null => false, :default => false
      t.timestamps
    end

    add_index :friends, [:user_id, :friend_id], :unique => true
  end
end
