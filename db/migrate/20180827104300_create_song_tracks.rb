class CreateSongTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :song_tracks do |t|
      t.references :track, foreign_key: true
      t.references :song, foreign_key: true
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
