class Question < ApplicationRecord
  belongs_to :quiz
  has_many :responses,  dependent: :destroy
end
