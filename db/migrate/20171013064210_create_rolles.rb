class CreateRolles < ActiveRecord::Migration[5.1]
  def change
    create_table :rolles do |t|
      t.string :name

      t.timestamps
    end
  end
end
