class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :shared_order, null: false
      t.references :user, null: false
      t.integer :min_quantity, null: false
      t.integer :max_quantity, null: false

      t.timestamps null: false
    end
    add_index :order_items, :shared_order
    add_index :order_items, :user
  end
end
