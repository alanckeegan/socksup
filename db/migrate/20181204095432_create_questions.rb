class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :quiz, foreign_key: true
      t.text :question
      t.string :type
      t.string :wrong_answer
      t.string :correct_answer

      t.timestamps
    end
  end
end
