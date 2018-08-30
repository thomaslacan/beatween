class Genre < ApplicationRecord
  has_many :songs
    mount_uploader :photo, PhotoUploader
end
