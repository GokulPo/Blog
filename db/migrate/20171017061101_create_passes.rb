class CreatePasses < ActiveRecord::Migration[5.1]
  def change
    create_table :passes do |t|
      t.integer :subject_id
      t.integer :student_id
      t.boolean :confirm

      t.timestamps
    end
  end
end
