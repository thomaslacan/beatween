class AddColumnToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :average_rating, :float
  end
end
