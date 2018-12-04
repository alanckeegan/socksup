class Listing < ApplicationRecord
  belongs_to :employer
  belongs_to :quiz
  has_many :submissions, dependent: :destroy

  validates :description, presence: true
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :hours_per_week, presence: true


end
