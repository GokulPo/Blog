class AddClassroomIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :classroom_id, :integer
  end
end
