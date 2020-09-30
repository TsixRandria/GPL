class CreateTarifs < ActiveRecord::Migration[6.0]
  def change
    create_table :tarifs do |t|
      t.integer :prix
      t.belongs_to :voiture, index: true

      t.timestamps
    end
  end
end
