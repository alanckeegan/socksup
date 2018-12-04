class Listing < ApplicationRecord
  belongs_to :employer
  belongs_to :quiz
  has_many :submissions, dependent: :destroy

end
