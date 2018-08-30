class AddInstrumentReferenceToTracks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :instrument, foreign_key: true
  end
end
