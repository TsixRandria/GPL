class CreateAssurances < ActiveRecord::Migration[6.0]
  def change
    create_table :assurances do |t|
      t.string :assurance
      t.integer :montant
      t.integer :caution

      t.timestamps
    end
  end
end
