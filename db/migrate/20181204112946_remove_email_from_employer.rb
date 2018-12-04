class RemoveEmailFromEmployer < ActiveRecord::Migration[5.2]
  def change
    remove_column :employers, :email
  end
end
