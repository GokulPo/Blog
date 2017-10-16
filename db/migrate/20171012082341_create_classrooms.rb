class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.numeric :max_count

      t.timestamps
    end
  end
end
