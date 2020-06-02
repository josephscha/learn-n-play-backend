class CreateSpellingProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :spelling_problems do |t|
      t.string :problem 
      t.string :answer
      t.string :image
      t.timestamps
    end
  end
end
