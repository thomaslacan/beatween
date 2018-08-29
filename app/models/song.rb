class Song < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :song_tracks
  has_many :tracks, through: :song_tracks
  validates :name,  presence: true
  validates :description,  presence: true
  validates :bpm, presence: true, numericality: {only_integer: true}
  validates :genre_id, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :description ],
    associated_against: {
      user: [ :username, :first_name, :last_name, :description ]
    },
    associated_against: {
      genre: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
