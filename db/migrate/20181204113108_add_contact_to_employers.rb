class AddContactToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :contact, :string
  end
end
