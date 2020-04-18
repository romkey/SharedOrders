class CreateAvailableItems < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE available_item_unit AS ENUM ('case', 'pound', 'item');
    SQL

    create_table :available_items do |t|
      t.string :name, null: false
      t.decimal :price, precision: 4, scale: 2, null: false
      t.references :source, null: false, foreign_key: true
      t.decimal :price_per_unit, precision: 4, scale: 2, null: false

      t.timestamps
    end

    add_column :available_items, :unit, :available_item_unit

    add_index :available_items, :name, unique: true
  end

  def down
    remove_table :available_items
    remove_index :available_items, :name, unique: true

    execute <<-SQL
      DROP TYPE available_item_unit;
    SQL
  end
end
