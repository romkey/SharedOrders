class CreateAvailableItems < ActiveRecord::Migration[6.0]
  def up
    unless Rails.env.development?
      execute <<-SQL
              CREATE TYPE available_item_unit AS ENUM ('case', 'pound', 'item');
      SQL
    end

    create_table :available_items do |t|
      t.string :name, null: false
      t.decimal :price, precision: 4, scale: 2, null: false
      t.references :source, null: false, foreign_key: true
      t.decimal :price_per_unit, precision: 4, scale: 2, null: false
      t.string :unit, null: false
      t.timestamps
    end

    add_index :available_items, :name
  end

  def down
    remove_table :available_items
    remove_index :available_items, :name, unique: true

    unless Rails.env.development?
      execute <<-SQL
        DROP TYPE available_item_unit;
      SQL
    end
  end
end
