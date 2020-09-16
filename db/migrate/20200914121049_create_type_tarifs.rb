class CreateTypeTarifs < ActiveRecord::Migration[6.0]
  def change
    create_table :type_tarifs do |t|
      t.string :titre

      t.timestamps
    end
  end
end
