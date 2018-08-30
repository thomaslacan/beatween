class Instrument < ApplicationRecord
  has_many :tracks
  mount_uploader :photo, PhotoUploader
end
