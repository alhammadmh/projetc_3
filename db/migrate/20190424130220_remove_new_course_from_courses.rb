class RemoveNewCourseFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :new_course, :boolean
  end
end
