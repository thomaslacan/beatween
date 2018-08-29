# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_29_143638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_tracks", force: :cascade do |t|
    t.bigint "track_id"
    t.bigint "song_id"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_tracks_on_song_id"
    t.index ["track_id"], name: "index_song_tracks_on_track_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "bpm"
    t.integer "num_of_tracks"
    t.integer "duration"
    t.bigint "user_id"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["genre_id"], name: "index_songs_on_genre_id"
    t.index ["user_id"], name: "index_songs_on_user_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "bpm"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "track_url"
    t.string "instrument_type"
    t.index ["user_id"], name: "index_tracks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "photo"
    t.integer "rating", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "song_tracks", "songs"
  add_foreign_key "song_tracks", "tracks"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "users"
  add_foreign_key "tracks", "users"
end
