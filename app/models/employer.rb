class Employer < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :users
end
