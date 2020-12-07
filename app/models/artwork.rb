class Artwork < ApplicationRecord
  validates :title, presence: true
  belongs_to :artist
end
