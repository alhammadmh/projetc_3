class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.strig :name
      t.integer :course_id

      t.timestamps
    end
  end
end
