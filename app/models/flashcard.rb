class Flashcard < ApplicationRecord
  validates :original, presence: true
  validates :translation, presence: true
end
