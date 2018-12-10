class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :responses, dependent: :destroy
  has_many :messages
end
