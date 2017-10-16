class AddConfirnToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :confirm,  :boolean
  end
end
