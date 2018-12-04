class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.references :listing, foreign_key: true
      t.boolean :submitted
      t.boolean :confirmed

      t.timestamps
    end
  end
end
