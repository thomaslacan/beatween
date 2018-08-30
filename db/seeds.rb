p "Cleaning database..."
p "Cleaning songtracks..."
SongTrack.destroy_all
p "Cleaning tracks..."
Track.destroy_all
p "Cleaning songs..."
Song.destroy_all
p "Cleaning genres..."
Genre.destroy_all
p "Cleaning users..."
User.destroy_all
p "----------"
p "Creating users..."
# USERS
user1 = User.create!(username: "tomakman", first_name: "Thomas", last_name: "Lacan", email: "thomas@beatween.com", password: "mdpmdp", description: "Late 90's House music producer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535121305/sj44wrihgidsud3i0ynl.jpg")
user2 = User.create!(username: "antoinecoconut", first_name: "Antoine", last_name: "Duvauchelle", email: "antoine@beatween.com", password: "mdpmdp", description: "Tech journalist, saxo player and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118655/ajzwuuchjypc2rp91fkt.jpg")
user3 = User.create!(username: "ghbozz", first_name: "Romain", last_name: "Sanson", email: "romain@beatween.com", password: "mdpmdp", description: "Sound engineer and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118652/ynmcx0pzk822pfir1fco.jpg")
user4 = User.create!(username: "Camel-light", first_name: "Damiano", last_name: "Rousselet", email: "damiano@beatween.com", password: "mdpmdp", description: "Hacker of all but women first ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118649/wxn7yc6fvlrvda9wof5g.jpg")
#GENRES
p "----------"
p "Creating genres..."
genre1 = Genre.create!(name: "Abstract")
genre2 = Genre.create!(name: "Acid Jazz")
genre3 = Genre.create!(name: "Ambient")
genre4 = Genre.create!(name: "Ballad")
genre5 = Genre.create!(name: "Breakbeat")
genre6 = Genre.create!(name: "Classic")
genre7 = Genre.create!(name: "Country")
genre8 = Genre.create!(name: "Dancehall")
genre9 = Genre.create!(name: "Disco")
genre10 = Genre.create!(name: "Deep House")
genre11 = Genre.create!(name: "Downtempo")
genre12 = Genre.create!(name: "Drum n bass")
genre13 = Genre.create!(name: "Dub")
genre14 = Genre.create!(name: "Electro")
genre15 = Genre.create!(name: "Experimentail")
genre16 = Genre.create!(name: "Folk")
genre17 = Genre.create!(name: "Funk")
genre18 = Genre.create!(name: "Garage House")
genre19 = Genre.create!(name: "Hardcore")
genre20 = Genre.create!(name: "Hardrock")
genre21 = Genre.create!(name: "Hip Hop")
genre22 = Genre.create!(name: "House")
genre23 = Genre.create!(name: "IDM")
genre24 = Genre.create!(name: "Indie")
genre25 = Genre.create!(name: "Italo Disco")
genre26 = Genre.create!(name: "Jazz")
genre27 = Genre.create!(name: "Minimal")
genre28 = Genre.create!(name: "Opera")
genre29 = Genre.create!(name: "Progressive House")
genre30 = Genre.create!(name: "Psy Trance")
genre31 = Genre.create!(name: "Punk")
genre32 = Genre.create!(name: "Reggaeton")
genre33 = Genre.create!(name: "Rock & Roll")
genre34 = Genre.create!(name: "Rnb")
genre35 = Genre.create!(name: "Soul")
genre36 = Genre.create!(name: "Techno")
genre37 = Genre.create!(name: "Tech-House")
genre38 = Genre.create!(name: "Trance")
genre39 = Genre.create!(name: "Trap")
genre40 = Genre.create!(name: "Vocal")


#INSTRUMENTS
p "----------"
p "Creating instruments..."
instrument1 = Instrument.create!(name: "Acoustic Guitar", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument2 = Instrument.create!(name: "Electric Guitar", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument3 = Instrument.create!(name: "Classic Guitar", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument4 = Instrument.create!(name: "Electro-Acoustic Guitar", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument5 = Instrument.create!(name: "Ukulele", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument6 = Instrument.create!(name: "Electric Bass", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument7 = Instrument.create!(name: "Accoustic Bass", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument8 = Instrument.create!(name: "Synthetizer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558457/keyboard-white.svg")
instrument9 = Instrument.create!(name: "Organ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558457/keyboard-white.svg")
instrument10 = Instrument.create!(name: "Accordion", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
instrument11 = Instrument.create!(name: "Hi Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument12 = Instrument.create!(name: "Mid Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument13 = Instrument.create!(name: "Low Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument14 = Instrument.create!(name: "Cymbal", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument15 = Instrument.create!(name: "Rim", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument16 = Instrument.create!(name: "Ride", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument17 = Instrument.create!(name: "Crash", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument18 = Instrument.create!(name: "Open Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument19 = Instrument.create!(name: "Closed Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument20 = Instrument.create!(name: "Closed Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument21 = Instrument.create!(name: "Snare", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument22 = Instrument.create!(name: "Bass Drum", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument23 = Instrument.create!(name: "Kick", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument24 = Instrument.create!(name: "Violin", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument25 = Instrument.create!(name: "Contrebass", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument26 = Instrument.create!(name: "Cello", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument27 = Instrument.create!(name: "Harmonica", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
instrument28 = Instrument.create!(name: "Other", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559290/other.svg")
instrument29 = Instrument.create!(name: "Shaker", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument30 = Instrument.create!(name: "Glitch", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559476/fx.svg" )
instrument31 = Instrument.create!(name: "Fx", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559476/fx.svg" )
instrument32 = Instrument.create!(name: "Maracas", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument33 = Instrument.create!(name: "Flute", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
instrument34 = Instrument.create!(name: "Pan Flute", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
instrument36 = Instrument.create!(name: "Bongo", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument37 = Instrument.create!(name: "Saxophone", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
instrument38 = Instrument.create!(name: "Trumpet", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
instrument39 = Instrument.create!(name: "Clarinet", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
instrument40 = Instrument.create!(name: "Bell", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument41 = Instrument.create!(name: "Conga", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument42 = Instrument.create!(name: "Cor", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
instrument43 = Instrument.create!(name: "Cymbal", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument44 = Instrument.create!(name: "Djembe", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument45 = Instrument.create!(name: "Harp", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
instrument46 = Instrument.create!(name: "Tambour", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument47 = Instrument.create!(name: "Tambourin", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument48 = Instrument.create!(name: "Trombone", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument49 = Instrument.create!(name: "Piano", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558457/keyboard-white.svg")
instrument50 = Instrument.create!(name: "Voice", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558652/voice-white.svg")

#SONGS
p "----------"
p "Creating songs..."
song1 = Song.create!(name: "Gin n Juice", description: "du gin & du jus ", bpm: 95, num_of_tracks: 23, duration: 198600, user: user4, genre: genre4, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song1.jpg", average_rating: 1.5)
song2 = Song.create!(name: "Love On The Beat", description: "For house music lovers", bpm: 142, num_of_tracks: 24, duration: 620000, user: user1, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song2.jpg", average_rating: 4.5)
song3 = Song.create!(name: "Antisocial", description: "Rock rules motherfucker !!", bpm: 126, num_of_tracks: 20, duration: 410000, user: user2, genre: genre2, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song3.jpg", average_rating: 2.5)
song4 = Song.create!(name: "Bitches", description: "Bitches are my breakfast", bpm: 95, num_of_tracks: 18, duration: 210000, user: user4, genre: genre3, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song4.jpg", average_rating: 3)
song5 = Song.create!(name: "Rumors", description: "Fleatwood Mac", bpm: 112, num_of_tracks: 10, duration: 180333, user: user3, genre: genre8, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song5.jpg", average_rating: 4)
song6 = Song.create!(name: "Rachmaninoff", description: "Symphony numero 2", bpm: 94, num_of_tracks: 14, duration: 215000, user: user2, genre: genre6, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song6.jpg", average_rating: 1)
song7 = Song.create!(name: "Killer Elite", description: "Dragonforce from the dragons", bpm: 103, num_of_tracks: 17, duration: 195000, user: user1, genre: genre4, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song7.jpg", average_rating: 2.5)
song8 = Song.create!(name: "Gerschwin", description: "Rhapsody in blue", bpm: 150, num_of_tracks: 13, duration: 233000, user: user3, genre: genre5, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song8.jpg", average_rating: 5)
#REVIEWS
p "----------"
p "Creating reviews..."
review1 = Review.create!(content: "Great", rating: 3, song: song1, user: user3)
review2 = Review.create!(content: "Amazing", rating: 4, song: song2, user: user2)
#TRACKS
p "----------"
p "Creating tracks..."
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

p "----------"
p "Creating songtracks..."
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
p "----------"
p "Everything seems fine bro!"