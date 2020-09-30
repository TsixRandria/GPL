class CreateTarifSupplementaires < ActiveRecord::Migration[6.0]
  def change
    create_table :tarif_supplementaires do |t|
      t.string :libelle
      t.integer :prix
      t.belongs_to :tarif, index: true

      t.timestamps
    end
  end
end
