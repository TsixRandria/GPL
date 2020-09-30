class CreateVoitures < ActiveRecord::Migration[6.0]
  def change
    create_table :voitures do |t|
      t.string :image
      t.string :marque
      t.string :place
      t.string :vitesse
      t.string :types
      t.boolean :climatiseur
      t.string :status
      t.string :portes
      #t.belongs_to :category, index: true
      

      t.timestamps
    end
  end
end
