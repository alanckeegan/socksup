class FixStartFromListing < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :start, :start_date
  end
end
