class CreateVoitures < ActiveRecord::Migration[6.0]
  def change
    create_table :voitures do |t|
      t.string :image
      t.string :marque
      t.string :place
      t.string :vitesse
      t.string :type
      t.boolean :climatiseur
      t.string :status

      t.timestamps
    end
  end
end
