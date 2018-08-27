class AddTrackIdToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :track_url, :string
  end
end
