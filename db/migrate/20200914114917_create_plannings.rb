class CreatePlannings < ActiveRecord::Migration[6.0]
  def change
    create_table :plannings do |t|
      t.string :titre
      t.string :etat
      t.datetime :date_debut
      t.datetime :echeance
      t.belongs_to :voiture, index: true

      t.timestamps
    end
  end
end
