class RemoveApplicationFromResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :application_id
  end
end


  # def self.up
  #   change_table :responses do |t|
  #     t.remove :application
  #   end
  # end
