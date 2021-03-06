class CreateUserCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
