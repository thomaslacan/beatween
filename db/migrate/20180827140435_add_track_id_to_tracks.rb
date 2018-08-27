class AddTrackIdToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :track_id, :string
  end
end
