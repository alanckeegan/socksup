class AddPayToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :pay_per_hour, :integer
  end
end
