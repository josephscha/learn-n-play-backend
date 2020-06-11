class CreateReadingProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :reading_problems do |t|
      t.string :problem 
      t.string :answer

      t.timestamps
    end
  end
end
