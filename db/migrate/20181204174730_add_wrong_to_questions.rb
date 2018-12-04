class AddWrongToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :wrong_answers, :text, default: [], array:true

  end
end
