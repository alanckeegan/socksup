class User < ApplicationRecord
   mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :submissions,  dependent: :destroy
  belongs_to :employer, optional: true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  # validates :date_of_birth, presence: true
  # validates :photo, presence: true
  # validates_presence_of   :photo
  # validates_integrity_of  :photo
  # validates_processing_of :photo

end
