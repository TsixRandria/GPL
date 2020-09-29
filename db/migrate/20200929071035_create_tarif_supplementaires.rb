class CreateTarifSupplementaires < ActiveRecord::Migration[6.0]
  def change
    create_table :tarif_supplementaires do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
