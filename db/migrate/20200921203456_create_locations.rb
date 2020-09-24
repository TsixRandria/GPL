class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :lieu_de_depart
      t.datetime :depart
      t.string :lieu_de_retour
      t.datetime :retour
      # t.belongs_to :option
      # t.belongs_to :reservation
      # t.belongs_to :voiture

      t.timestamps
    end
  end
end
