class AddSubjectToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :subject, foreign_key: true
  end
end
