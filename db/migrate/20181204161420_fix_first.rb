class FixFirst < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first, :first_name
  end
end
