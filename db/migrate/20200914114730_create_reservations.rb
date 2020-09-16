class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :numero_vol
      t.string :compagnie
      t.belongs_to :tarif, index: true


      t.timestamps
    end
  end
end
