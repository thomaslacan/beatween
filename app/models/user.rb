class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :songs
  has_many :tracks
  has_many :colabs, through: :tracks, class_name: 'Song', source: :songs

  mount_uploader :photo, PhotoUploader
end
