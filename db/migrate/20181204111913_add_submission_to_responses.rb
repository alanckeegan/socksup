class AddSubmissionToResponses < ActiveRecord::Migration[5.2]
  def change
    add_reference :responses, :submission, foreign_key: true
  end
end
