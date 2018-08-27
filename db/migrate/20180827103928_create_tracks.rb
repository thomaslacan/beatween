class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.references :user, foreign_key: true
      t.integer :bpm
      t.text :description

      t.timestamps
    end
  end
end
