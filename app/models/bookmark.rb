class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie_id, uniqueness: { scope: :list_id, message: "Ya esta en la lista" }
  validates :comment, length: { minimum: 6 }
end