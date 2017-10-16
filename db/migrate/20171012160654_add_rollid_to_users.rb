class AddRollidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rolle_id, :numeric
  end
end
