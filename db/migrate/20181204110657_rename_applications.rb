class RenameApplications < ActiveRecord::Migration[5.2]
  def change
    rename_table :applications, :submissions
  end
end
