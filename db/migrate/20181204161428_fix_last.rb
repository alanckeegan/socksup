class FixLast < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :last, :last_name
  end
end
