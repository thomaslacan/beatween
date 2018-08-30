class RenameTrackInTracks < ActiveRecord::Migration[5.2]
  def change
    rename_column :tracks, :track_url, :uploaded_file
  end
end
