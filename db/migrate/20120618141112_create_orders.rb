class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, :product_id, :null => false
      t.timestamps
    end

    add_index :orders, :user_id
    add_index :orders, :product_id
  end
end
