class CreateReservationOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_options do |t|
      t.integer :quantite
      t.belongs_to :tarif_supplementaire, index: true

      t.timestamps
    end
  end
end
