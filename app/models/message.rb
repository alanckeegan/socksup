class Message < ApplicationRecord
  belongs_to :submission
  belongs_to :user
  # after_create :broadcast_message


  def broadcast_message
  end
end
