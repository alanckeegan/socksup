class FixEndFromListing < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :end, :end_date
  end
end
