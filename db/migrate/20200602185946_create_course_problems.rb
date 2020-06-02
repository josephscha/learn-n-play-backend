class CreateCourseProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :course_problems do |t|
      t.integer :course_id
      t.references :problemable, polymorphic: true
      t.timestamps
    end
  end
end
