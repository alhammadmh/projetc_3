class AddFieldToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :field, :string
  end
end
