class AddClassroomIdToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :classroom_id, :integer
  end
end
