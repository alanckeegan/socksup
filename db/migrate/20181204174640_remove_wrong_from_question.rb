class RemoveWrongFromQuestion < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :wrong_answer
  end
end
