class AddVoitureToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :voiture, :text
  end
end
