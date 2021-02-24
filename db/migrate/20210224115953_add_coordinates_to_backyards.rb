class AddCoordinatesToBackyards < ActiveRecord::Migration[6.1]
  def change
    add_column :backyards, :latitude, :float
    add_column :backyards, :longitude, :float
  end
end
