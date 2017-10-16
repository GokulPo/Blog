class AddEmailToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :email, :string
    add_column :teachers, :password, :string
    add_column :teachers, :confirm_password, :string
  end
end
