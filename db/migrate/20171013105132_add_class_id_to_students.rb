class AddClassIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :class_id, :integer
  end
end
