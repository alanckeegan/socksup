class AddAddressToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :address, :string
  end
end
