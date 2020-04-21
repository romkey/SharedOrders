class IncreasePrecisionOnPrices < ActiveRecord::Migration[6.0]
  def change
    change_column :available_items, :price, :decimal, precision: 8
    change_column :available_items, :price_per_unit, :decimal, precision: 8
  end
end
