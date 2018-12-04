class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :submissions,  dependent: :destroy


  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :date_of_birth, presence: true
  validates :photo, presence: true

end
