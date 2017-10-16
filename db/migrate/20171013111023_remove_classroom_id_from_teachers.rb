class RemoveClassroomIdFromTeachers < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachers, :classroom_id, :integer
  end
end
