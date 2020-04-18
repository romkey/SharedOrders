class AddStatusToSharedOrder < ActiveRecord::Migration[6.0]
    def up
    execute <<-SQL
      CREATE TYPE shared_order_status AS ENUM ('inactive', 'active', 'cancelled', 'completed')
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE shared_order_status
    SQL
  end

  def change
    add_column :shared_orders, :status, :shared_order_status, null: false, default: :inactive
  end
end
