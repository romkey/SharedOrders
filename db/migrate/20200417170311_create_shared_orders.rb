class CreateSharedOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_orders do |t|
      t.string :name
      t.references :source, null: false, foreign_key: true
      t.datetime :starts
      t.datetime :ends

      t.timestamps
    end
    add_index :shared_orders, :name
    add_index :shared_orders, :starts
    add_index :shared_orders, :ends
  end
end
