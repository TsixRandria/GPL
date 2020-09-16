class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.integer :conducteur
      t.integer :siegebebe
      t.integer :rehausseur
      t.boolean :gps

      t.timestamps
    end
  end
end
