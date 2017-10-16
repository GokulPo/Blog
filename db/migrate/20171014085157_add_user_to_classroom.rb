class AddUserToClassroom < ActiveRecord::Migration[5.1]
  def change
    add_reference :classrooms, :user, foreign_key: true
  end
end
