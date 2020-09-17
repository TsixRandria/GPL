class CreateTypeOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :type_options do |t|
      t.belongs_to :reservation, index: true
	  t.belongs_to :option, index: true

      t.timestamps
    end
  end
end
