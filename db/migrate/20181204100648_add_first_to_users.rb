class AddFirstToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first, :string
  end
end
