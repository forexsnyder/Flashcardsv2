class Flavor < ApplicationRecord
  has_and_belongs_to_many :flashcard_sets
  has_many :comments
end
