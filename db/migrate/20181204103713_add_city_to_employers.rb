class AddCityToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :city, :string
  end
end
