class Artwork < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo

end
