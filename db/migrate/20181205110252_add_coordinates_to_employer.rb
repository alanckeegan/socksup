class AddCoordinatesToEmployer < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :latitude, :float
    add_column :employers, :longitude, :float
  end
end
