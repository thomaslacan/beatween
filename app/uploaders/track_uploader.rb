class TrackUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
