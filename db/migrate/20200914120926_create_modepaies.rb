class CreateModepaies < ActiveRecord::Migration[6.0]
  def change
    create_table :modepaies do |t|
      t.string :status
      t.string :combinaison
      t.integer :prixbs
      t.integer :prixms
      t.integer :prixhs
      t.datetime :datedebut
      t.datetime :datefin
      t.integer :tarifjour
      t.string :rubrique
      t.belongs_to :type_tarif, index: true
      
      t.timestamps
    end
  end
end
