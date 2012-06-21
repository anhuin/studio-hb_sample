class CreateWishLists < ActiveRecord::Migration
  def change
    create_table :wish_lists do |t|
      t.integer :user_id, :engine_id, :null => false
      t.timestamps
    end

    add_index :wish_lists, :user_id
    add_index :wish_lists, :engine_id
  end
end
