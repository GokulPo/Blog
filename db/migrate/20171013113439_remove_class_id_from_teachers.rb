class RemoveClassIdFromTeachers < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachers, :class_id, :integer
  end
end
