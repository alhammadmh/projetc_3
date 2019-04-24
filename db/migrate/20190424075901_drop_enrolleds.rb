class DropEnrolleds < ActiveRecord::Migration[5.2]
  def change
    drop_table :enrolleds
  end
end
