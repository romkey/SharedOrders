class AddStatusToSharedOrder < ActiveRecord::Migration[6.0]
  def up
    unless Rails.env.development?
      execute <<-SQL
        CREATE TYPE shared_order_status AS ENUM ('inactive', 'active', 'cancelled', 'completed')
      SQL
    end

    add_column :shared_orders, :status, :string, null: false, default: :inactive
    add_index :shared_orders, :status
  end

  def down
    unless Rails.env.development?
      execute <<-SQL
        DROP TYPE shared_order_status
      SQL
    end

    remove_column :shared_orders, :status
    remove_index :shared_orders, :status
  end
end
