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
user1 = User.create!(username: "florida", first_name: "Thomas", last_name: "Lacan", email: "thomas@beatween.com", password: "mdpmdp", description: "Late 90's House music producer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535715667/hugo-tsr-point-de-depart-clip-_59830.jpg")
user2 = User.create!(username: "antoinecoconut", first_name: "Antoine", last_name: "Duvauchelle", email: "antoine@beatween.com", password: "mdpmdp", description: "Tech journalist, saxo player and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535712180/kanye.jpg")
user3 = User.create!(username: "ghbozz", first_name: "Romain", last_name: "Sanson", email: "romain@beatween.com", password: "mdpmdp", description: "Sound engineer and masterpiece fullstack developer", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535712180/demon.jpg")
user4 = User.create!(username: "camel-light", first_name: "Damiano", last_name: "Rousselet", email: "damiano@beatween.com", password: "mdpmdp", description: "Hacker of all but women first ", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535118649/wxn7yc6fvlrvda9wof5g.jpg")
user5 = User.create!(username: "etta-js", first_name: "Etta", last_name: "James", email: "etta@beatween.com", password: "mdpmdp", description: "Women who sing good", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536065815/chRMTWK5ZLlmmzHBPRpaI3OlPql.jpg")
user6 = User.create!(username: "kimk", first_name: "Kim", last_name: "Kardashian", email: "kim@beatween.com", password: "mdpmdp", description:"Fashion addict and producing when i have the time" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536066181/beatween/kimkardashianbabyshower.jpg")
user7 = User.create!(username: "joelatape", first_name: "Joe", last_name: "Latape", email: "joe@beatween.com", password: "mdpmdp", description:"Boxing and music" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536066442/Walk-on-Water-Revival-nouvel-album-Eminem.jpg")
user8 = User.create!(username: "demiportion", first_name: "Demi", last_name: "Portion", email: "demi@beatween.com", password: "mdpmdp", description:"I'm a pimp" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536066580/image.jpg")
user9 = User.create!(username: "tiersmonde", first_name: "Tiers", last_name: "Monde", email: "tiers@beatween.com", password: "mdpmdp", description:"No future so i do music" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536067512/beatween/TIERS-MONDE-1.jpg-Visionneuse-de-photos-Windows.jpg")
user10 = User.create!(username: "rohff", first_name: "Ousni", last_name: "Bellek", email: "ousni@beatween.com", password: "mdpmdp", description:"We want to take all without be catch" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536068323/rohff_2.jpg")
user11 = User.create!(username: "b2o", first_name: "Booba", last_name: "Official", email: "booba@beatween.com", password: "mdpmdp", description:"Keep the fire burning" ,remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536068516/avant.jpg")

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
genre41 = Genre.create!(name: "Rap")



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
# instrument11 = Instrument.create!(name: "Hi Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument12 = Instrument.create!(name: "Mid Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument13 = Instrument.create!(name: "Low Tom", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument14 = Instrument.create!(name: "Cymbal", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument15 = Instrument.create!(name: "Rim", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument16 = Instrument.create!(name: "Ride", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument17 = Instrument.create!(name: "Crash", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument18 = Instrument.create!(name: "Open Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument19 = Instrument.create!(name: "Closed Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument20 = Instrument.create!(name: "Closed Hat", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument21 = Instrument.create!(name: "Snare", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument22 = Instrument.create!(name: "Bass Drum", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
instrument23 = Instrument.create!(name: "Kick", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument24 = Instrument.create!(name: "Violin", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
# instrument25 = Instrument.create!(name: "Contrebass", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
# instrument26 = Instrument.create!(name: "Cello", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
# instrument27 = Instrument.create!(name: "Harmonica", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
# instrument28 = Instrument.create!(name: "Other", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559290/other.svg")
# instrument29 = Instrument.create!(name: "Shaker", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument30 = Instrument.create!(name: "Glitch", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559476/fx.svg" )
instrument31 = Instrument.create!(name: "Fx", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559476/fx.svg" )
# instrument32 = Instrument.create!(name: "Maracas", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument33 = Instrument.create!(name: "Flute", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
# instrument34 = Instrument.create!(name: "Pan Flute", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535559045/vents.svg")
# instrument36 = Instrument.create!(name: "Bongo", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument37 = Instrument.create!(name: "Saxophone", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
# instrument38 = Instrument.create!(name: "Trumpet", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
# instrument39 = Instrument.create!(name: "Clarinet", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
# instrument40 = Instrument.create!(name: "Bell", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument41 = Instrument.create!(name: "Conga", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument42 = Instrument.create!(name: "Cor", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558538/cuivres-white.svg")
# instrument43 = Instrument.create!(name: "Cymbal", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument44 = Instrument.create!(name: "Djembe", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument45 = Instrument.create!(name: "Harp", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558583/cordes-white.svg")
# instrument46 = Instrument.create!(name: "Tambour", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument47 = Instrument.create!(name: "Tambourin", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument48 = Instrument.create!(name: "Trombone", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
# instrument49 = Instrument.create!(name: "Piano", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558457/keyboard-white.svg")
instrument50 = Instrument.create!(name: "Voice", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558652/voice-white.svg")
instrument51 = Instrument.create!(name: "Percussions", remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535558347/percs-white.svg")
#SONGS
p "----------"
p "Creating songs..."
# HARDER BETTER FASTER STRONGER

song1 = Song.create!(name: "Stronger", description: "Better Faster ", bpm: 95, num_of_tracks: 23, duration: 198600, user: user2, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535712439/kanye_stronger_by_soyen.jpg", average_rating: 1.5)


song2 = Song.create!(name: "Love On The Beat", description: "For house music lovers", bpm: 142, num_of_tracks: 24, duration: 620000, user: user1, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song2.jpg", average_rating: 4.5)
song3 = Song.create!(name: "Antisocial", description: "Rock rules motherfucker !!", bpm: 126, num_of_tracks: 20, duration: 410000, user: user2, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song3.jpg", average_rating: 2.5)
song4 = Song.create!(name: "Bitches", description: "Bitches are my breakfast", bpm: 95, num_of_tracks: 18, duration: 210000, user: user3, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song4.jpg", average_rating: 3)
song5 = Song.create!(name: "Rumors", description: "Fleatwood Mac", bpm: 112, num_of_tracks: 10, duration: 180333, user: user3, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song5.jpg", average_rating: 4)
song6 = Song.create!(name: "Rachmaninoff", description: "Symphony numero 2", bpm: 94, num_of_tracks: 14, duration: 215000, user: user2, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song6.jpg", average_rating: 1)
song7 = Song.create!(name: "Killer Elite", description: "Dragonforce from the dragons", bpm: 103, num_of_tracks: 17, duration: 195000, user: user4, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song7.jpg", average_rating: 2.5)
song8 = Song.create!(name: "Gerschwin", description: "Rhapsody in blue", bpm: 150, num_of_tracks: 13, duration: 233000, user: user3, genre: genre1, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1535379670/song8.jpg", average_rating: 5)
song9 = Song.create!(name: "Good Feelings", description: "Summer is on ", bpm: 129, num_of_tracks: 9, duration: 233000, user: user1, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536064536/61q4w6R_8AL._SS500.jpg", average_rating: 4)
song10 = Song.create!(name: "Chez Moi", description: "Home fire", bpm: 100, num_of_tracks: 12, duration: 345000, user: user8, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536066790/son-rap-francais-cover-Maxime-Masgrau.jpg", average_rating: 3)
song11 = Song.create!(name: "Chance The Rapper", description: "Song about my cap ", bpm: 105, num_of_tracks: 9, duration: 456070, user: user7, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536067034/f4f9c624219547.5633152d3eb53.png", average_rating: 4)
song12 = Song.create!(name: "Eatin", description: "Song for women heater", bpm: 120, num_of_tracks: 10, duration: 123567, user: user10, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536067210/56e14a326a1b9_thumb900.jpg", average_rating: 2)
song13 = Song.create!(name: "Trone", description: "The Duc is here", bpm: 129, num_of_tracks: 9, duration: 233000, user: user11, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536068599/booba-trone-54343.jpg", average_rating: 4)
song14 = Song.create!(name: "TDSI", description: "We want to take all without be catch ", bpm: 120, num_of_tracks: 9, duration: 233000, user: user10, genre: genre41, remote_photo_url: "https://res.cloudinary.com/dae1kvpyn/image/upload/v1536067828/La_Vie_avant_la_mort.jpg", average_rating: 5)

#REVIEWS

p "----------"
p "Creating reviews..."
review1 = Review.create!(content: "Great", rating: 3, song: song1, user: user3)
review2 = Review.create!(content: "Amazing", rating: 4, song: song2, user: user2)
#TRACKS
p "----------"
p "Creating tracks..."

# HARDER BETTER FASTER STRONGER

track1 = Track.create!(user: user2, bpm: 100, description: "drum", instrument_id: instrument1, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536054192/beatween/Drum_1.m4a" )
track2 = Track.create!(user: user2, bpm: 100, description: "drum", instrument_id: instrument2, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626862/beatween/Drum_2.m4a" )
track3 = Track.create!(user: user3, bpm: 100, description: "drum", instrument_id: instrument3, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626856/beatween/Drum_3.m4a" )
track4 = Track.create!(user: user2, bpm: 100, description: "synth", instrument_id: instrument4, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626856/beatween/Synth_1.m4a" )
track5 = Track.create!(user: user2, bpm: 100, description: "outro guitar", instrument_id: instrument5, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626857/beatween/Outro_Guitar.m4a" )
track6 = Track.create!(user: user2, bpm: 100, description: "synth", instrument_id: instrument6, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626862/beatween/Synth_3.m4a" )
track7 = Track.create!(user: user2, bpm: 100, description: "synth", instrument_id: instrument7, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626863/beatween/Synth_2.m4a" )
track8 = Track.create!(user: user3, bpm: 100, description: "synth", instrument_id: instrument8, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626864/beatween/Outro_Synth.m4a" )
track9 = Track.create!(user: user4, bpm: 100, description: "synth", instrument_id: instrument9, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535626865/beatween/Synth_4.m4a" )
track10 = Track.create!(user: user2, bpm: 100, description: "synth", instrument_id: instrument10, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536054326/beatween/Synth_5.m4a" )
track11 = Track.create!(user: user4, bpm: 100, description: "voice", instrument_id: instrument10, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1535715778/daft_punk_sample.m4a" )

# GOOD FEELINGS

track20 = Track.create!(user: user1, bpm: 129, description: "Voice", instrument_id: instrument50, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536063560/Voice_M.mp3" )
track19 = Track.create!(user: user1, bpm: 129, description: "Voice FX", instrument_id: instrument50, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536063744/Voice_FX.mp3" )
track18 = Track.create!(user: user1, bpm: 129, description: "Synth", instrument_id: instrument8, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536063815/Synth.mp3" )
track14 = Track.create!(user: user1, bpm: 129, description: "Snare", instrument_id: instrument21, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536063832/Snare.mp3" )
track13 = Track.create!(user: user11, bpm: 129, description: "Percussions", instrument_id: instrument51, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536063918/Percussion.mp3" )
track12 = Track.create!(user: user1, bpm: 129, description: "Kick", instrument_id: instrument23, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536064028/Kick.mp3" )
track16 = Track.create!(user: user8, bpm: 129, description: "Guitar", instrument_id: instrument3, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536064055/Guitars.mp3" )
track17 = Track.create!(user: user1, bpm: 129, description: "Fx", instrument_id: instrument31, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536064225/Fx-time.mp3" )
track15 = Track.create!(user: user10, bpm: 129, description: "Bass", instrument_id: instrument6, remote_uploaded_file_url: "https://res.cloudinary.com/dae1kvpyn/video/upload/v1536064301/Bass.mp3" )



p "----------"
p "Creating songtracks..."
# SONGTRACKS

# HARDER BETTER FASTER STRONGER

song_track1 = SongTrack.create!(song: song1, track: track1, status:"active")
song_track2 = SongTrack.create!(song: song1, track: track2, status:"active")
song_track3 = SongTrack.create!(song: song1, track: track3, status:"active")
song_track4 = SongTrack.create!(song: song1, track: track4, status:"active")
song_track5 = SongTrack.create!(song: song1, track: track5, status:"active")
song_track6 = SongTrack.create!(song: song1, track: track6, status:"active")
song_track7 = SongTrack.create!(song: song1, track: track7, status:"active")
song_track8 = SongTrack.create!(song: song1, track: track8, status:"active")
song_track9 = SongTrack.create!(song: song1, track: track9, status:"active")
song_track10 = SongTrack.create!(song: song1, track: track10, status:"active")
song_track10 = SongTrack.create!(song: song1, track: track11, status:"active")

# GOOD FEELINGS

song_track11 = SongTrack.create!(song: song9, track: track12, status:"active")
song_track12 = SongTrack.create!(song: song9, track: track13, status:"active")
song_track13 = SongTrack.create!(song: song9, track: track14, status:"active")
song_track14 = SongTrack.create!(song: song9, track: track15, status:"active")
song_track15 = SongTrack.create!(song: song9, track: track16, status:"active")
song_track16 = SongTrack.create!(song: song9, track: track17, status:"active")
song_track17 = SongTrack.create!(song: song9, track: track18, status:"active")
song_track18 = SongTrack.create!(song: song9, track: track19, status:"active")
song_track19 = SongTrack.create!(song: song9, track: track20, status:"active")



p "----------"
p "Everything seems fine bro!"
