class Artist < ApplicationRecord
  has_many :artworks, dependent: :destroy
end
