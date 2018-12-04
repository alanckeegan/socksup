class Response < ApplicationRecord
  belongs_to :submission
  belongs_to :question
end
