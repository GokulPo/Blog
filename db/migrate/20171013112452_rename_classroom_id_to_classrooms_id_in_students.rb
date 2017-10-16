class RenameClassroomIdToClassroomsIdInStudents < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :classroom_id, :classrooms_id
  end
end
