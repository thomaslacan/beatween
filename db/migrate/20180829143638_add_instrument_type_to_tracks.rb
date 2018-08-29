class AddInstrumentTypeToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :instrument_type, :string
  end
end
