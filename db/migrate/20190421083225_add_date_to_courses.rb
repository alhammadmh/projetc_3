class AddDateToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :start, :datetime
    add_column :courses, :end, :datetime
  end
end
