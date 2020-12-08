class Artwork < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo

  # after_validation :attach_image


#   def attach_image
#     # artwork.photo.attach(io: picture_url, filename: 'xxx', content_type: 'xxx')
#     require "open-uri"
#     artwork.photo.attach(
#     io: File.open(@artwork.picture_url),
#     filename: 'file.pdf',
#     # content_type: 'application/',
#     identify: false
#     )
#   end

# # @message.image.attach(
#   io: File.open('/path/to/file'),
#   filename: 'file.pdf',
#   content_type: 'application/pdf',
#   identify: false
# )

end
