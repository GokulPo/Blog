class RemoveRolleIdFRomUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :rolle_id
    remove_column :users, :temp
  end
end
