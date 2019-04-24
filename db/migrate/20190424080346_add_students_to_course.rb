class AddStudentsToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :students, :string, array: true, default: []
  end
end
