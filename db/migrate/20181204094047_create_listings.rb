class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :employer, foreign_key: true
      t.references :quiz, foreign_key: true
      t.text :description
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :hours_per_week

      t.timestamps
    end
  end
end
