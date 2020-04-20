class CreateSharedOrderUserTable < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_orders_users do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :shared_order, foreign_key: true
    end
  end
end
