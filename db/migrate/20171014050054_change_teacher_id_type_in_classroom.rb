class ChangeTeacherIdTypeInClassroom < ActiveRecord::Migration[5.1]
  def change
    rename_column :classrooms, :teachers_id, :teacher_id
  end
end
