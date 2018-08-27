class Song < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :song_tracks
  has_many :tracks, through: :song_tracks
  validates :name,  presence: true
  validates :description,  presence: true
  validates :bpm, presence: true, numericality: {only_integer: true}
  validates :genre_id, presence: true
end
