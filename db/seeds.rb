puts "cleaning database"

SongTrack.destroy_all
puts "songtracks destroy"
Track.destroy_all
puts "tracks destroy"
Song.destroy_all
puts "song destroy"
Genre.destroy_all
puts "genre destroy"
User.destroy_all
puts "user destroy"


puts "creating users"

# USERS

user1 = User.create!(username: "tomakman", first_name: "Thomas", last_name: "Lacan", email: "thomas@beatween.com", password: "mdpmdp", description: "Late 90's House music producer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535121305/sj44wrihgidsud3i0ynl.jpg")
user2 = User.create!(username: "antoinecoconut", first_name: "Antoine", last_name: "Duvauchelle", email: "antoine@beatween.com", password: "mdpmdp", description: "Tech journalist, saxo player and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118655/ajzwuuchjypc2rp91fkt.jpg")
user3 = User.create!(username: "ghbozz", first_name: "Romain", last_name: "Sanson", email: "romain@beatween.com", password: "mdpmdp", description: "Sound engineer and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118652/ynmcx0pzk822pfir1fco.jpg")
user4 = User.create!(username: "Camel-light", first_name: "Damiano", last_name: "Rousselet", email: "damiano@beatween.com", password: "mdpmdp", description: "Hacker of all but women first ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118649/wxn7yc6fvlrvda9wof5g.jpg")


#GENRES
puts "creating genre"

genre1 = Genre.create!(name: "House")
genre2 = Genre.create!(name: "Rock")
genre3 = Genre.create!(name: "Rap")
genre4 = Genre.create!(name: "Pop")
genre5 = Genre.create!(name: "Folk")
genre6 = Genre.create!(name: "Reggea")
genre7 = Genre.create!(name: "Classic")
genre8 = Genre.create!(name: "Techno")

#SONGS
puts "creating songs"

song1 = Song.create!(name: "Gin n Juice", description: "du gin & du jus ", bpm: 95, num_of_tracks: 23, duration: 198600, user: user4, genre: genre4, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song1.jpg")
song2 = Song.create!(name: "Love On The Beat", description: "For house music lovers", bpm: 142, num_of_tracks: 24, duration: 620000, user: user1, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song2.jpg")
song3 = Song.create!(name: "Antisocial", description: "Rock rules motherfucker !!", bpm: 126, num_of_tracks: 20, duration: 410000, user: user2, genre: genre2, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song3.jpg")
song4 = Song.create!(name: "Bitches", description: "Bitches are my breakfast", bpm: 95, num_of_tracks: 18, duration: 210000, user: user4, genre: genre3, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song4.jpg")

#TRACKS
puts "creating tracks"

track1 = Track.create!(user: user4, bpm: 100, description: "kick", track_url: "Audio_1_01" )
track2 = Track.create!(user: user4, bpm: 100, description: "hat", track_url: "Audio_2_01" )
track3 = Track.create!(user: user4, bpm: 100, description: "snare", track_url: "Audio_3_01" )
track4 = Track.create!(user: user4, bpm: 100, description: "voice", track_url: "Audio_4_01" )
track5 = Track.create!(user: user4, bpm: 100, description: "keyboard", track_url: "Audio_5_01" )
track6 = Track.create!(user: user4, bpm: 100, description: "bass", track_url: "Audio_6_01" )
track7 = Track.create!(user: user4, bpm: 100, description: "guitar", track_url: "Audio_7_01" )
track8 = Track.create!(user: user4, bpm: 100, description: "clap", track_url: "Audio_8_01" )
track9 = Track.create!(user: user4, bpm: 100, description: "fx", track_url: "Audio_9_01" )
track10 = Track.create!(user: user4, bpm: 100, description: "ukulele", track_url: "Audio_10_01" )
track11 = Track.create!(user: user4, bpm: 100, description: "saxo", track_url: "Audio_11_01" )
track12 = Track.create!(user: user4, bpm: 100, description: "banjo", track_url: "Audio_12_01" )
track13 = Track.create!(user: user4, bpm: 100, description: "bombard", track_url: "Audio_13_01" )
track14 = Track.create!(user: user4, bpm: 100, description: "flute-traversiere", track_url: "Audio_14_01" )
track15 = Track.create!(user: user4, bpm: 100, description: "cor", track_url: "Audio_15_01" )
track16 = Track.create!(user: user4, bpm: 100, description: "kazu", track_url: "Audio_16_01" )
track17 = Track.create!(user: user4, bpm: 100, description: "washboard", track_url: "Audio_17_01" )
track18 = Track.create!(user: user4, bpm: 100, description: "clavecin", track_url: "Audio_18_01" )
# track19 = Track.create!(user: user4, bpm: 100, description: "", track_url: "Audio_19_01" )
track20 = Track.create!(user: user4, bpm: 100, description: "baton-de-riz", track_url: "Audio_20_01" )
track21 = Track.create!(user: user4, bpm: 100, description: "wurlizer", track_url: "Audio_21_01" )
track22 = Track.create!(user: user4, bpm: 100, description: "contrebass", track_url: "Audio_22_01" )
track23 = Track.create!(user: user4, bpm: 100, description: "snap", track_url: "Audio_23_01" )

puts "creating songtracks"
# SONGTRACKS

song_track1 = SongTrack.create!(song: song1, track: track1)
song_track2 = SongTrack.create!(song: song1, track: track2)
song_track3 = SongTrack.create!(song: song1, track: track3)
song_track4 = SongTrack.create!(song: song1, track: track4)
song_track5 = SongTrack.create!(song: song1, track: track5)
song_track6 = SongTrack.create!(song: song1, track: track6)
song_track7 = SongTrack.create!(song: song1, track: track7)
song_track8 = SongTrack.create!(song: song1, track: track8)
song_track9 = SongTrack.create!(song: song1, track: track9)
song_track10 = SongTrack.create!(song: song1, track: track10)
song_track11 = SongTrack.create!(song: song1, track: track11)
song_track12 = SongTrack.create!(song: song1, track: track12)
song_track13 = SongTrack.create!(song: song1, track: track13)
song_track14 = SongTrack.create!(song: song1, track: track14)
song_track15 = SongTrack.create!(song: song1, track: track15)
song_track16 = SongTrack.create!(song: song1, track: track16)
song_track17 = SongTrack.create!(song: song1, track: track17)
song_track18 = SongTrack.create!(song: song1, track: track18)
# song_track19 = SongTrack.create!(song: song1, track: track19)
song_track20 = SongTrack.create!(song: song1, track: track20)
song_track21 = SongTrack.create!(song: song1, track: track21)
song_track22 = SongTrack.create!(song: song1, track: track22)
song_track23 = SongTrack.create!(song: song1, track: track23)


puts "all good bro !"

