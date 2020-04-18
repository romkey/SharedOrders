class AddStatusToSharedOrder < ActiveRecord::Migration[6.0]
    def up
    execute <<-SQL
      CREATE TYPE shared_order_status AS ENUM ('inactive', 'active', 'cancelled', 'completed')
    SQL

    add_column :shared_orders, :status, :shared_order_status, null: false, default: :inactive
    add_index :shared_orders, :status
  end

  def down
    execute <<-SQL
      DROP TYPE shared_order_status
    SQL

    remove_column :shared_orders, :status
    remove_index :shared_orders, :status
  end
end
