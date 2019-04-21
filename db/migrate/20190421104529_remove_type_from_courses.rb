class RemoveTypeFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :type, :string
  end
end
