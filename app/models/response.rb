class Response < ApplicationRecord
  belongs_to :submission
  belongs_to :question

  validates :content, presence: true
end
