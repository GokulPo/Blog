class AddTempToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :temp, :string
  end
end
