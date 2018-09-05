class SongTrack < ApplicationRecord
  belongs_to :track
  belongs_to :song

  validates :track_id, presence: true, allow_nil: false
  validates :song_id, presence: true, allow_nil: false
end
