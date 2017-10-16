class RemoveClassIdFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :class_id, :integer
  end
end
