class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :img
      t.date :date
      t.string :type
      t.text :desc
      t.integer :instructor_id

      t.timestamps
    end
  end
end
