class CreatePaiements < ActiveRecord::Migration[6.0]
  def change
    create_table :paiements do |t|
      t.integer :accompte
      t.integer :total
      t.belongs_to :reservation, index:true

      t.timestamps
    end
  end
end
