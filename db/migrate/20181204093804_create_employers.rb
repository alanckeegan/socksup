class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
