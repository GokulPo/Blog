class ChangeMaxCountTypeInClassroom < ActiveRecord::Migration[5.1]
  def change
    change_column :classrooms, :max_count, :integer
  end
end
