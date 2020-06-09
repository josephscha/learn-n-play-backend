class AddColumnToCoursesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :points, :integer
  end
end
