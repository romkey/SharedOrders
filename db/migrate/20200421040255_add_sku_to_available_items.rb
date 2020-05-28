class AddSkuToAvailableItems < ActiveRecord::Migration[6.0]
  def change
    add_column :available_items, :sku, :string, null: false, default: ''
    add_index :available_items, :sku
  end
end
