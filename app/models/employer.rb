class Employer < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :users

  validates :contact, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :city, presence: true
  validates :photo, presence: true
  validates :address, presence: true

geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_address
    [address, city].join(', ')
  end

end
