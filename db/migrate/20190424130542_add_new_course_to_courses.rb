class AddNewCourseToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :new_course, :boolean
  end
end
