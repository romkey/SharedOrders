class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :shared_order, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :available_items, null: false, foreign_key: true
      t.integer :min_quantity, null: false
      t.integer :max_quantity, null: false

      t.timestamps null: false
    end
  end
end
