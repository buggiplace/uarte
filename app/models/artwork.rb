class Artwork < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :artist
  has_one_attached :photo

  # def previous_artwork
  #   self.class.first(:conditions => ["title < ?", title], :order => "title desc")
  # end

  # def next_artwork
  #   self.class.first(:conditions => ["title > ?", title], :order => "title asc")
  # end

  def previous
    Artwork.where(["id < ?", id]).last
  end

  def next
    Artwork.where(["id > ?", id]).first
  end
end
