class AddPhotoToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :photo, :string
  end
end
