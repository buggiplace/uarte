class Artist < ApplicationRecord
  # validates :artist_name, presence: true
  has_many :artworks, dependent: :destroy
end
