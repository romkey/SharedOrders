class AddSlackUidToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false, default: ''
    add_column :users, :slack_uid, :string

    add_index  :users, :slack_uid, unique: true
  end
end
