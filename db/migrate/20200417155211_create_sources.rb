class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.string :website, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.string :notes, default: ''

      t.timestamps
    end
    add_index :sources, :name
    add_index :sources, :address
    add_index :sources, :notes
  end
end
