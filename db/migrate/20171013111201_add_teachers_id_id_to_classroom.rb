class AddTeachersIdIdToClassroom < ActiveRecord::Migration[5.1]
  def change
    add_column :classrooms, :teachers_id, :integer
  end
end
