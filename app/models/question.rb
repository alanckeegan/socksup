class Question < ApplicationRecord
  belongs_to :quiz
  has_many :responses,  dependent: :destroy

  validates :question_type, inclusion: { in: %w(multiple_choice text_field)}, :allow_nil => false
  validates :question, presence: true
end
