class RemoveNewFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :new, :boolean
  end
end
