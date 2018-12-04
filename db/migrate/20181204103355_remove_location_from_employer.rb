class RemoveLocationFromEmployer < ActiveRecord::Migration[5.2]
  def change
    remove_column :employers, :location
  end
end
