class AddLastToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last, :string
  end
end
