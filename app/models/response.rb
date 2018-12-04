class Response < ApplicationRecord
  belongs_to :application
  belongs_to :question
end
