class Listing < ApplicationRecord
  belongs_to :employer
  belongs_to :quiz
  has_many :submissions, dependent: :destroy

  validates :description, presence: true
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :hours_per_week, presence: true


end
